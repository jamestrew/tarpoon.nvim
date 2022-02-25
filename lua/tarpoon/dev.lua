local M = {}

M.dump = function(...)
	print(vim.inspect(...))
end

local function get_log_level()
	local log_levels = {
		trace = "trace",
		debug = "debug",
		info = "info",
		warn = "warn",
		error = "error",
		fatal = "fatal",
	}
	local log_level = log_levels[vim.env.TARPOON_LOG or vim.g.tarpoon_log_level]

	return log_level or "warn"
end

M.log = require("plenary.log").new({
	plugin = "tarpoon",
	level = get_log_level()
})

return M
