---------------------------------------------------------------------
--_____.___.                ____  __.            ___.   .__            .___      
--\__  |   |______  ____   |    |/ _|____ ___.__.\_ |__ |__| ____    __| _/______
-- /   |   \_  __ \/  _ \  |      <_/ __ <   |  | | __ \|  |/    \  / __ |/  ___/
-- \____   ||  | \(  <_> ) |    |  \  ___/\___  | | \_\ \  |   |  \/ /_/ |\___ \ 
-- / ______||__|   \____/  |____|__ \___  > ____| |___  /__|___|  /\____ /____  >
-- \/                              \/   \/\/          \/        \/      \/    \/ 
---------------------------------------------------------------------

-- Use spacebar as leader key
vim.g.mapleader = ' '

OPTIONS = { noremap = true }

---------------------------------------------------------------------
-- _______          __  .__                           .__         
-- \      \ _____ _/  |_|__|__  __ ____     _______  _|__| _____  
-- /   |   \\__  \\   __\  \  \/ // __ \   /    \  \/ /  |/     \ 
--/    |    \/ __ \|  | |  |\   /\  ___/  |   |  \   /|  |  Y Y  \
--\____|__  (____  /__| |__| \_/  \___  > |___|  /\_/ |__|__|_|  /
--        \/     \/                   \/       \/              \/
---------------------------------------------------------------------

-- Use Ctrl-h,j,k,l to move between splits
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', OPTIONS)
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', OPTIONS)
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', OPTIONS)
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', OPTIONS)

-- Center each search result
vim.api.nvim_set_keymap('n', 'n', 'nzz', OPTIONS)
vim.api.nvim_set_keymap('n', 'N', 'Nzz', OPTIONS)

-- Quickly edit vimrc
vim.api.nvim_set_keymap('n', '<leader>vimrc', '<cmd>e $MYVIMRC<CR>', OPTIONS)

-- Quickly open terminal
vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>split<CR><cmd>terminal<CR><C-w>j a', OPTIONS)

-- Go back to normal mode in terminal
vim.api.nvim_set_keymap('t', '<C-n>', '<C-|><C-n>', OPTIONS)


---------------------------------------------------------------------
--.____                                .__  __   
--|    |   _____  ___________.__. ____ |__|/  |_ 
--|    |   \__  \ \___   <   |  |/ ___\|  \   __\
--|    |___ / __ \_/    / \___  / /_/  >  ||  |  
--|_______ (____  /_____ \/ ____\___  /|__||__|  
--        \/    \/      \/\/   /_____/           
---------------------------------------------------------------------
-- lazygit
vim.api.nvim_set_keymap('n', '<leader>lg', '<cmd>LazyGit<cr>', OPTIONS)

---------------------------------------------------------------------
--___________    .__                                            
--\__    ___/___ |  |   ____   ______ ____  ____ ______   ____  
--  |    |_/ __ \|  | _/ __ \ /  ___// ___\/  _ \\____ \_/ __ \ 
--  |    |\  ___/|  |_\  ___/ \___ \\  \__(  <_> )  |_> >  ___/ 
--  |____| \___  >____/\___  >____  >\___  >____/|   __/ \___  >
--             \/          \/     \/     \/      |__|        \/ 
---------------------------------------------------------------------
-- Telescope all telescope options
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>Telescope<cr>', OPTIONS)

-- List keymaps
vim.api.nvim_set_keymap('n', '<leader>tkm', '<cmd>Telescope keymaps<cr>', OPTIONS)

-- List files in current directory
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', OPTIONS)

-- Search for a string in current working directory and get live results
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', OPTIONS)

-- List manpage entries
vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>Telescope man_pages<cr>', OPTIONS)

-- List diagnostics for all open buffers
vim.api.nvim_set_keymap('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', OPTIONS)

-- List LSP references for word under the cursor
vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope lsp_references<cr>', OPTIONS)

---------------------------------------------------------------------
--__________                __                 
--\______   \_____    ____ |  | __ ___________ 
-- |     ___/\__  \ _/ ___\|  |/ // __ \_  __ \
-- |    |     / __ \\  \___|    <\  ___/|  | \/
-- |____|    (____  /\___  >__|_ \\___  >__|   
--                \/     \/     \/    \/
---------------------------------------------------------------------
-- Run Packer Profile
vim.api.nvim_set_keymap('n', '<leader>pp', '<cmd>PackerProfile<cr>', OPTIONS)

---------------------------------------------------------------------
--.____                     _________      .__        
--|    |    __ _______     /   _____/ ____ |__|_____  
--|    |   |  |  \__  \    \_____  \ /    \|  \____ \ 
--|    |___|  |  // __ \_  /        \   |  \  |  |_> >
--|_______ \____/(____  / /_______  /___|  /__|   __/ 
--        \/          \/          \/     \/   |__|
---------------------------------------------------------------------
-- local ls = require "luasnip"

-- vim.keymap.set({ "i", "s" }, "<c-k>", function()
--     if ls.expand_or_jumpable() then
--         ls.expand_or_jump()
--     end
-- end, {silent = true})

-- vim.keymap.set({ "i", "s" }, "<c-j>", function()
--     if ls.jumpable(-1) then
--         ls.jump(-1)
--     end
-- end, {silent = true})

-- vim.keymap.set({ "i", "s" }, "<c-l>", function()
--     if ls.choice_activate() then
--         ls.change_choice(1)
--     end
-- end)
---------------------------------------------------------------------
--________        ___.                       .__                  __      __.__  __    ________                 
--\______ \   ____\_ |__  __ __  ____   ____ |__| ____    ____   /  \    /  \__|/  |_  \______ \ _____  ______  
-- |    |  \_/ __ \| __ \|  |  \/ ___\ / ___\|  |/    \  / ___\  \   \/\/   /  \   __\  |    |  \\__  \ \____ \ 
-- |    `   \  ___/| \_\ \  |  / /_/  > /_/  >  |   |  \/ /_/  >  \        /|  ||  |    |    `   \/ __ \|  |_> >
--/_______  /\___  >___  /____/\___  /\___  /|__|___|  /\___  /    \__/\  / |__||__|   /_______  (____  /   __/ 
--        \/     \/    \/     /_____//_____/         \//_____/          \/                     \/     \/|__|    
---------------------------------------------------------------------
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>rdb", ":RustDebuggables<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require'dap'.continue()<CR>")
vim.keymap.set("n", "<leader>dt", ":lua require'dap'.terminate()<CR>")
vim.keymap.set("n", "<leader>drc", ":lua require'dap'.reverse_continue()<CR>")
vim.keymap.set("n", "<leader>dsv", ":lua require'dap'.step_over()<CR>")
vim.keymap.set("n", "<leader>di", ":lua require'dap'.step_into()<CR>")
vim.keymap.set("n", "<leader>dso", ":lua require'dap'.step_out()<CR>")
