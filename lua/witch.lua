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
        name = "Terminal",
        t = { "<cmd>split<CR><cmd>terminal<CR><C-w>j a", "Open Termal" }, 
    },
     

}, { prefix = "<leader>" })
