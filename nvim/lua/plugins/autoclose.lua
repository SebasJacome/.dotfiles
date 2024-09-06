return {
	"m4xshen/autoclose.nvim",

	config = function()
		local autoclose = require("autoclose")
		autoclose:setup({
			keys = {
					[">"] = { escape = false, close = false, pair = "<>", disabled_filetypes = {"html"} },
					["<"] = { escape = false, close = false, pair = "<>", disabled_filetypes = {"html"} },
			 },
		})
	end

}
