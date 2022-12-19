-- Check that file has not already been installed
if vim.fn.empty(vim.fn.glob("~/.config/nvim/lua")) > 0 then

    -- Get "Set" config
    vim.fn.execute("! mkdir -p lua/Yro/Native/Set && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Native/Set/init.lua >> lua/Yro/Native/Set/init.lua")

    -- Get "Set" config
    vim.fn.execute("! mkdir -p lua/Yro/Native/Remap && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Native/Remap/init.lua >> lua/Yro/Native/Remap/init.lua")

    -- Get "Plugins" "Packer" config
    vim.fn.execute("! mkdir -p lua/Yro/Plugins/Packer && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Plugins/Packer/init.lua >> lua/Yro/Plugins/Packer/init.lua")

    -- Get "Plugins" "Telescope" config
    vim.fn.execute("! mkdir -p lua/Yro/Plugins/Telescope && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Plugins/Telescope/init.lua >> lua/Yro/Plugins/Telescope/init.lua")

    -- Get "Plugins" "Treesitter" config
    vim.fn.execute("! mkdir -p lua/Yro/Plugins/Treesitter && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Plugins/Treesitter/init.lua >> lua/Yro/Plugins/Treesitter/init.lua")

    -- Get "Plugins" "LSP" config
    vim.fn.execute("! mkdir -p lua/Yro/Plugins/LSP && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Plugins/LSP/init.lua >> lua/Yro/Plugins/LSP/init.lua")

    -- Get "Plugins" "DAP" config
    vim.fn.execute("! mkdir -p lua/Yro/Plugins/DAP && curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/Plugins/DAP/init.lua >> lua/Yro/Plugins/DAP/init.lua")

    -- Require Sets module in Yro's init.lua
    vim.fn.execute("! curl https://raw.githubusercontent.com/jgYro/neovim_config/master/lua/Yro/init.lua >> lua/Yro/init.lua")
end

require("Yro")
