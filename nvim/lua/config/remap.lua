vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-h>", ":noh<CR>")

vim.keymap.set("n", "<C-o>", "o<Esc>k")
vim.keymap.set("n", "<C-l>", "O<Esc>")

-- Changing directories and opening in netrw
vim.keymap.set("n", "<leader>cd", function()
    local input = vim.fn.input("Enter directory: ")
    if input ~= "" then
        vim.cmd("cd " .. input)
        vim.cmd("ed .")
    end
end)


-- Goes to definition of the function or variable
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)

-- Displays information about function
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)

-- Rename a function or variable and replace it
vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end)

-- Display information about an error or warning
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end)

-- Display where something is used, either function, variable, or include file
vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end)

-- Format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Close Terminal Mode and Move to Previous window
vim.keymap.set('t', '<C-q>', "<C-\\><C-n><C-w>h",{silent = true})

-- Open a Vertical Window with a Terminal in it
vim.api.nvim_set_keymap('n', '<C-w>m', ':vsplit<CR><C-w>w:term<CR>i', { noremap = true, silent = true })

