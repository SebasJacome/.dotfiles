require('config.functions')

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.scrolloff = 8

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1

vim.opt.smartindent = true

vim.opt.statusline = "%f     " ..           -- File path (left-aligned)
										"%{v:lua.Mode_name()}    " ..		 -- Current mode
										"%m" ..						 -- Displays if the file is modified
                    "%= " ..           -- Separator to push the rest to the right
                    "%{v:lua.capitalize_filetype()}    " ..           -- File type (language)
                    "%P " ..         -- Percentage through the file
                    "%l:%c"            -- Line and column number


vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.opt_local.number = true
    vim.opt_local.relativenumber = true
  end,
})

