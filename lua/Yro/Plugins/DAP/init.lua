local dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/opt/homebrew/opt/llvm/bin/lldb-vscode',
    name = 'lldb'
}
dap.configurations.rust = {
    {
        name = 'Launch',
        type = 'lldb',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}

dap.adapters.dart = {
    type = "executable",
    command = "dart",
    -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
    args = { "debug_adapter" }
}
dap.configurations.dart = {
    {
        type = "dart",
        request = "launch",
        name = "Launch Dart Program",
        -- The nvim-dap plugin populates this variable with the filename of the current buffer
        program = "${file}",
        -- The nvim-dap plugin populates this variable with the editor's current working directory
        cwd = "${workspaceFolder}",
        args = { "--help" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
    }
}

require('dap-python').setup('/Library/Frameworks/Python.framework/Versions/3.10/bin/python3')

require("nvim-dap-virtual-text").setup()

require("dapui").setup()

local dapui = require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end
