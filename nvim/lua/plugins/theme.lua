return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
    },
    {
        'erikbackman/brightburn.vim',
        name = 'brightburn',
    },
    {
        'blazkowolf/gruber-darker.nvim',
        opts = {
            bold = true,
            italic = {
                strings = false,
                comments = false,
                folds = false,
            },
        },
        name = 'gruber-darker',
        config = function(_, opts)
            require('gruber-darker').setup(opts)
            vim.cmd('colorscheme vague')
        end
    },
    {
        "vague2k/vague.nvim",
        name = 'vague',
        config = function()
            require("vague").setup({
                style = {
                    boolean = "none",
                    number = "none",
                    float = "none",
                    error = "none",
                    comments = "bold",
                    conditionals = "none",
                    functions = "none",
                    headings = "bold",
                    operators = "none",
                    strings = "none",
                    variables = "none",
                    keywords = "none",
                    keyword_return = "none",
                    keywords_loop = "none",
                    keywords_label = "none",
                    keywords_exception = "none",
                    builtin_constants = "none",
                    builtin_functions = "none",
                    builtin_types = "none",
                    builtin_variables = "none",
                },
            })
        end
    },
}
