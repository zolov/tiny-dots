local options = {
    spelllang = "ru,en",
    foldmethod = "marker",
    backup = false,
    clipboard = "unnamedplus",
    conceallevel = 0,
    fileencoding = "utf-8",
    ignorecase = true,
    mouse = "a",
    pumheight = 15,
    winblend = 0,
    pumblend = 0,
    showmode = false,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = true,
    timeoutlen = 300,
    termguicolors = true,
    undofile = true,
    updatetime = 500,
    writebackup = false,
    expandtab = false,
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,

    showtabline = 0,
    cursorline = true,
    cmdheight = 1,
    laststatus = 3,
    number = true,
    relativenumber = true,
    numberwidth = 2,
    signcolumn = "yes",
    wrap = false,
    scrolloff = 8,
    sidescrolloff = 8,
    -- lazyredraw = true, -- Won't be redrawn while executing macros, register and other commands.
    -- shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
    -- shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
    -- shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
    -- shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
    -- shellquote = "",
    -- shellxquote = "",
    background = "dark",
    backspace = "indent,eol,start",
    langmap = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz",
}

local global = {
    did_load_filetypes = false,
    mkdp_auto_close = 0, -- Don't Exit Preview When Switching Buffers
    highlighturl_enabled = true, -- highlight URLs by default
    -- disable netrw at the very start of your init.lua (strongly advised)
    loaded = true,
    loaded_netrwPlugin = true,
    zipPlugin = true, -- disable zip
    load_black = true, -- disable black
    loaded_2html_plugin = true, -- disable 2html
    loaded_getscript = true, -- disable getscript
    loaded_getscriptPlugin = true, -- disable getscript
    loaded_gzip = true, -- disable gzip
    loaded_logipat = true, -- disable logipat
    loaded_matchit = true, -- disable matchit
    loaded_remote_plugins = true, -- disable remote plugins
    loaded_tar = true, -- disable tar
}

vim.opt.shortmess:append("A")
vim.opt.whichwrap:append("<,>,[,],h,l")
vim.opt.iskeyword:append("-")

-- Set the char for the indent line
vim.g.indentline_char = "·"

for k, v in pairs(options) do
    vim.opt[k] = v
end

for k, v in pairs(global) do
    vim.g[k] = v
end

-- refresh buffers when files change on disk
vim.cmd([[
  set autoread
  au CursorHold * checktime
]])
