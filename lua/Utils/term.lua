local M = {}

local Terminal = require("toggleterm.terminal").Terminal

function M.open_term(cmd, opts)
  opts = opts or {}
  opts.size = opts.size or vim.o.columns * 0.5
  opts.direction = opts.direction or "vertical"
  opts.on_open = opts.on_open or default_on_open
  opts.on_exit = opts.on_exit or nil

  local new_term = Terminal:new {
    cmd = cmd,
    dir = "git_dir",
    auto_scroll = false,
    close_on_exit = false,
    start_in_insert = false,
    on_open = opts.on_open,
    on_exit = opts.on_exit,
  }
  new_term:open(opts.size, opts.direction)
end

------------------ Stack Overflow ----------------------------
function M.so()
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
    cmd = "so " .. cmd
    M.open_term(cmd, { direction = "float" })
  end)
end

------------------ Wikipedia ----------------------------
function M.wiki()
  local buf = vim.api.nvim_get_current_buf()
  lang = ""
  vim.ui.input({ prompt = "wiki input: "}, function(input)
    local cmd = ""
    if input == "" or not input then
      return
    elseif input == "h" then
      cmd = "--help"
    else
      cmd = "\"" .. input .. "\""
    end
    cmd = "wiki-tui " .. cmd
    print(cmd)
    M.open_term(cmd, { direction = "float" })
  end)
end

return M
