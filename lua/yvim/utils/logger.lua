local log = require("structlog")

return log.Logger("default", {
    log.Pipeline(
        log.level.INFO,
        {
            log.processors.StackWriter(
                { "line", "file" },
                { max_parents = 0, stack_level = 0 }
            ),
            log.processors.Timestamper("%H:%M:%S"),
        },
        log.formatters.FormatColorizer(
            "%s [%s] %s: %-30s",
            { "timestamp", "level", "logger_name", "msg" },
            { level = log.formatters.FormatColorizer.color_level() }
        ),
        log.sinks.Console()
    )
})
