local M = {}

function M.so_input()
  local buf = vim.api.nvim_get_current_buf()
  lang = ""
  file_type = vim.api.nvim_buf_get_option(buf, "filetype")
  vim.ui.input({ prompt = "so input: ", default = file_type .. " " }, function(input)
    local cmd = ""
    if input == "" or not input then
      return
    elseif input == "h" then
      cmd = "-h"
    else
      cmd = input
    end
    M.so_cmd(cmd)
  end)
end

local function open_split()
  vim.api.nvim_exec("vnew", true)
  vim.api.nvim_exec("terminal", true)
  local buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_name(buf, "cheatsheet-" .. buf)
  vim.api.nvim_buf_set_option(buf, "filetype", "cheat")
  vim.api.nvim_buf_set_option(buf, "syntax", lang)
end

function M.so_cmd(cmd)
  open_split()
  local chan_id = vim.b.terminal_job_id
  local so_cmd = "so " .. cmd
  vim.api.nvim_chan_send(chan_id, so_cmd .. "\n")
end

return M
