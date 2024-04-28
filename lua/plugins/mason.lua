return {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "html-lsp",
                "css-lsp",
                "prettier",
                "clangd",
                "pyright",
                "debugpy",
                "markdown-oxide",
            },
        },
    },
}
