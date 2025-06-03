local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local lazy = require("lazy")
lazy.setup({
    ui = {
        border = "rounded",
        title = "Plugin Manager",
        title_pos = "center",
        size = {
            width = 0.8,
            height = 0.8,
        },
    },

    icons = {
        cmd = " ",
        config = "",
        event = "",
        ft = " ",
        init = " ",
        import = " ",
        keys = " ",
        lazy = "󰂠 ",
        loaded = "●",
        not_loaded = "○",
        plugin = " ",
        runtime = " ",
        source = " ",
        start = "",
        task = "✔ ",
        list = {
            "●",
            "➜",
            "★",
            "‒",
        },
    },

    checker = {
        enabled = false,
        notify = false,
    },

    change_detection = {
        enabled = false,
        notify = false,
    },

    install = {
        colorscheme = { "catppuccin" },
        missing = true,
    },
})
