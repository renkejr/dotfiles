require("nvim-tree").setup({
    open_on_setup = true,
    open_on_setup_file = true,
    hijack_cursor = true,
    renderer = {
        highlight_git = true,
        indent_markers = {
            enable = true,
        },
    },
    view = {
        adaptive_size = true,
        width = "50%",
        float = {
            enable = true,
            open_win_config = {
                width = 100,
                row = 5,
                col = 10,
            },
        },
    },
    filters = {
        custom = { "^\\.git" },
    },
})
