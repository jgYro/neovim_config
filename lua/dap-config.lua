local dap = require('dap')
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
