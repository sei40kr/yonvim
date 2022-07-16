#!/usr/bin/env nix-shell
#!nix-shell -i python3 -p "python3.withPackages (ps: with ps; [ requests ])"

import argparse
from datetime import datetime
import json
import operator
import requests
import subprocess
import sys


def read_plugins():
    with open("plugins.json", "r") as infile:
        return json.load(infile)


def write_plugins(plugins):
    with open("plugins.json", "w") as outfile:
        json.dump(plugins, outfile, indent=4)


def get_repo_default_branch(owner, repo):
    url = f'https://api.github.com/repos/{owner}/{repo}'
    response = requests.get(url, headers={
        "Accept": "application/vnd.github+json"
    }).json()
    return response['default_branch']


def get_branch_head_rev(owner, repo, branch):
    url = f'https://api.github.com/repos/{owner}/{repo}/branches/{branch}'
    response = requests.get(url, headers={
        "Accept": "application/vnd.github+json"
    }).json()
    hash = response['commit']['sha']
    date = response['commit']['commit']['author']['date']
    return {
        "hash": hash,
        "date": datetime.strptime(date, "%Y-%m-%dT%H:%M:%SZ")
    }


def get_rev_nix_hash(owner, repo, rev_hash):
    url = f'https://github.com/{owner}/{repo}/archive/{rev_hash}.zip'
    try:
        proc = subprocess.run(
            ["nix-prefetch-url", "--type", "sha256", "--unpack", url],
            check=True,
            capture_output=True
        )
    except subprocess.CalledProcessError as e:
        print(e.stderr.decode())
    return proc.stdout.decode().splitlines()[0].strip()


def sanitize_nix_attr_name(name):
    return name.replace('.', '-')


def generate_nix_derivations(plugins):
    drvs = map(lambda p: f'''
  {sanitize_nix_attr_name(p['repo'])} = vimUtils.buildVimPlugin {{
    pname = "{p['repo']}";
    version = "{p['version']}";

    src = fetchFromGitHub {{
      owner = "{p['owner']}";
      repo = "{p['repo']}";
      rev = "{p['rev']}";
      sha256 = "{p['sha256']}";
    }};

    dontBuild = true;

    meta.homepage = "https://github.com/{p['owner']}/{p['repo']}";
  }};
''', plugins)

    with open("generated.nix", "w") as outfile:
        outfile.write(f'''# This file has been auto-generated by plugins.py. Do not edit!
{{ fetchFromGitHub, vimUtils }}:

{{{"".join(drvs)}}}
''')


def add(location):
    parts = location.split('/')
    if len(parts) != 2:
        print(
            f'Location must be in the format of <owner>/<repo>: {location}', file=sys.stderr)
        exit(1)
    owner, repo = parts

    plugins = read_plugins()

    if any(map(lambda p: p['owner'] == owner and p['repo'] == repo, plugins)):
        print(f'Plugin {owner}/{repo} already exists', file=sys.stderr)
        exit(1)

    default_branch = get_repo_default_branch(
        owner=owner, repo=repo)
    head_rev = get_branch_head_rev(
        owner=owner, repo=repo, branch=default_branch)
    nix_hash = get_rev_nix_hash(
        owner=owner, repo=repo, rev_hash=head_rev['hash'])

    plugins.append({
        'version': head_rev['date'].strftime("%Y-%m-%d"),
        'owner': owner,
        'repo': repo,
        'rev': head_rev['hash'],
        'sha256': nix_hash
    })
    plugins.sort(key=lambda p: p['repo'])

    write_plugins(plugins)

    generate_nix_derivations(plugins)


def remove(name):
    plugins = read_plugins()

    try:
        i = next(i for i, p in enumerate(plugins) if p['repo'] == name)
    except StopIteration:
        print(f'Plugin {name} does not exist')
        exit(1)
    plugins.pop(i)

    write_plugins(plugins)

    generate_nix_derivations(plugins)


def update(name):
    plugins = read_plugins()

    indexes = [
        i for i, p in enumerate(plugins) if name is None or p['repo'] == name
    ]
    if name is not None and len(indexes) == 0:
        print(f'Plugin {name} is not found', file=sys.stderr)
        exit(1)

    # TODO parallelize updates
    for i in indexes:
        plugin = plugins[i]
        owner, repo, rev, sha256 = operator.itemgetter(
            "owner", "repo", "rev", "sha256")(plugin)

        default_branch = get_repo_default_branch(
            owner=owner, repo=repo)
        head_rev = get_branch_head_rev(
            owner=owner, repo=repo, branch=default_branch)
        if head_rev['hash'] != rev:
            print(f"- {owner}/{repo}: {rev} -> {head_rev['hash']}")

            nix_hash = get_rev_nix_hash(
                owner=owner, repo=repo, rev_hash=head_rev['hash'])

            plugin.update({
                'version': head_rev['date'].strftime("%Y-%m-%d"),
                'rev': head_rev['hash'],
                'sha256': nix_hash
            })

            # TODO show the commit log since last update
        else:
            print(f"- {plugin['owner']}/{plugin['repo']}: up-to-date")

    write_plugins(plugins)

    generate_nix_derivations(plugins)


def main():
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(dest='subcommand')

    add_parser = subparsers.add_parser('add', help='add plugin')
    add_parser.add_argument(
        'location', type=str, help='plugin repository to add (formats in <owner>/<repo>)')

    remove_parser = subparsers.add_parser('remove', help='remove plugin')
    remove_parser.add_argument(
        'name', type=str, help='plugin name to remove')

    update_parser = subparsers.add_parser('update', help='update plugin(s)')
    update_parser.add_argument(
        'name', type=str, nargs='?', help='plugin name to update (updates all if omitted)')

    args = parser.parse_args()

    if args.subcommand == 'add':
        add(args.location)
    elif args.subcommand == 'remove':
        remove(args.name)
    elif args.subcommand == 'update':
        update(args.name)
    else:
        parser.print_help()


if __name__ == '__main__':
    main()
