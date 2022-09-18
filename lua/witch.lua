local wk = require "which-key"

wk.register({
    f = {
        name = "Telescope",
        f = { "<cmd>Telescope find_files<cr>", "Find File" }, 
        g = { "<cmd>Telescope live_grep<cr>", "Grep Working Directory" }, 
        m = { "<cmd>Telescope man_pages<cr>", "Search Man Pages" }, 
        d = { "<cmd>Telescope find_files<cr>", "Diagnostics" }, 
        r = { "<cmd>Telescope find_files<cr>", "LSP Ref Under Cursor" }, 
        t = { "<cmd>Telescope<cr>", "Telescope Things" }, 
        m = { "<cmd>Telescope keymaps<cr>", "Keymaps" }, 
    },

    v = {
        name = "VIM Config",
        i = { "<cmd>e $MYVIMRC<cr>", "Edit VIMRC" }, 
        t = { "<cmd>e ~/.config/nvim/lua/ts.lua<cr>", "Edit Treesitter Config" }, 
        w = { "<cmd>e ~/.config/nvim/lua/witch.lua<cr>", "Edit Which-Key Config" }, 
        d = { "<cmd>e ~/.config/nvim/lua/default.lua<cr>", "Edit Neovim Defaults" }, 
        p = { "<cmd>e ~/.config/nvim/lua/plugins.lua<cr>", "Add/Remove Plugins" }, 
        d = { "<cmd>e ~/.config/nvim/lua/dap-config.lua<cr>", "Edit DAP Config" }, 
        k = { "<cmd>e ~/.config/nvim/lua/keybinds.lua<cr>", "Edit Neovim Keybinds" }, 
        l = { "<cmd>lua require('yro_telescope').Cd(\'$HOME/.config/nvim/lua/\')<cr>", "Edit Neovim Keybinds" }, 
        s = { "<cmd>:w <cr><cmd>so %<cr>", "Source Current File" }, 
    },

    g = {
        name = "Git",
        l = { "<cmd>LazyGit<cr>", "Open Lazygit" }, 
        c = { "<cmd>Telescope git_commits<cr>", "View Commits" }, 
        b = { "<cmd>Telescope git_branches<cr>", "View Branches" }, 
        s = { "<cmd>Telescope git_status<cr>", "Git Status" }, 
    },

    b = {
        name = "Debugger",
        b = { ":lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" }, 
        c = { ":lua require'dap'.continue()<cr>", "Continue" }, 
        t = { ":lua require'dap'.terminate()<cr>", "Terminate Debugger" }, 
        r = { ":lua require'dap'.reverse_continue()<cr>", "Reverse Continue" }, 
        v = { ":lua require'dap'.step_over()<cr>", "Step Over" }, 
        i = { ":lua require'dap'.step_into()<cr>", "Step Into" }, 
        u = { ":lua require'dap'.step_out()<cr>", "Step Out" }, 
    },

    p = {
        name = "Packer",
        p = { "<cmd>PackerProfile<cr>", "Profile" }, 
        i = { "<cmd>PackerInstall<cr>", "Install" }, 
        s = { "<cmd>PackerSync<cr>", "Sync" }, 
        c = { "<cmd>PackerCompile<cr>", "Compile" }, 
        l = { "<cmd>PackerClean<cr>", "Clean" }, 
    },

    t = {
        name = "Terminal & Treesitter",
        t = { "<cmd>split<CR><cmd>terminal<CR><C-w>j a", "Open Termal" }, 
        s = { "+Treesitter" },
        sc = { "+Select Class" },
        sf = { "+Select Function" },
        sl = { "+Select Loop" },
        sp = { "+Select Loop" },
        sp = { "<cmd>TSPlaygroundToggle<CR>", "TS Playground" }, 
        sci = { "<cmd>TSTextobjectSelect @class.inner<CR>", "Inner" }, 
        sco = { "<cmd>TSTextobjectSelect @class.outer<CR>", "Outer" }, 
        sfi = { "<cmd>TSTextobjectSelect @function.inner<CR>", "Inner" }, 
        sfo = { "<cmd>TSTextobjectSelect @function.outer<CR>", "Outer" }, 
        sli = { "<cmd>TSTextobjectSelect @loop.inner<CR>", "Inner" }, 
        slo = { "<cmd>TSTextobjectSelect @loop.outer<CR>", "Outer" }, 
        spi = { "<cmd>TSTextobjectSelect @parameter.inner<CR>", "Inner" }, 
        spo = { "<cmd>TSTextobjectSelect @parameter.outer<CR>", "Outer" }, 
    },



    s = {
        name = "Search",
        c = { "<Cmd>lua require('Utils.cht').so_input()<cr>", "cht.sh" },
        s = { "<Cmd>lua require('Utils.term').so()<cr>", "Stack Overflow" },
        w = { "<Cmd>lua require('Utils.term').wiki()<cr>", "Wikipedia" },
    },
     

}, { prefix = "<leader>" })
