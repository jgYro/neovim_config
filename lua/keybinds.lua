---------------------------------------------------------------------
--_____.___.                ____  __.            ___.   .__            .___      
--\__  |   |______  ____   |    |/ _|____ ___.__.\_ |__ |__| ____    __| _/______
-- /   |   \_  __ \/  _ \  |      <_/ __ <   |  | | __ \|  |/    \  / __ |/  ___/
-- \____   ||  | \(  <_> ) |    |  \  ___/\___  | | \_\ \  |   |  \/ /_/ |\___ \ 
-- / ______||__|   \____/  |____|__ \___  > ____| |___  /__|___|  /\____ /____  >
-- \/                              \/   \/\/          \/        \/      \/    \/ 
---------------------------------------------------------------------
local whichkey = require "which-key"

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

-- Go back to normal mode in terminal
vim.api.nvim_set_keymap('t', '<C-n>', '<C-|><C-n>', OPTIONS)
