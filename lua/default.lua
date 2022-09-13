-- Set VIM defaults
vim.opt.tm = 0
vim.opt.scrollback = 100000
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.g.beacon_minimal_jump = 5
vim.g["python3_host_prog"] = "/Library/Frameworks/Python.framework/Versions/3.10/bin/python3"
vim.o.background = "dark"
vim.cmd[[colorscheme tokyonight]]

require'nvim-web-devicons'.setup {}

require'dressing'.setup({
    input = {
        prompt_align = "center"
    }
})
