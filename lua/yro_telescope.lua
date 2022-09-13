-- local cdPicker = function(name, cmd)
-- 	require("telescope.pickers").new({}, {
-- 		prompt_title = name,
-- 		finder = require("telescope.finders").new_table({
-- 			results = require("telescope.utils").get_os_command_output(cmd),
-- 		}),
-- 		previewer = require("telescope.previewers").vim_buffer_cat.new({}),
-- 		sorter = require("telescope.sorters").get_fuzzy_file(),
-- 		attach_mappings = function(prompt_bufnr)
-- 			require("telescope.actions.set").select:replace(function(_)
-- 				local entry = actions_state.get_selected_entry()
-- 				actions.close(prompt_bufnr)
-- 				local dir = require("telescope.from_entry").path(entry)
-- 				vim.api.nvim_set_current_dir(dir)
-- 			end)
-- 			return true
-- 		end,
-- 	}):find()
-- end


-- local M = {}

-- M.Cd = function(path)
-- 	path = path or "."
-- 	cdPicker("Cd", {
-- 		vim.o.shell,
-- 		"-c",
-- 		"fd . " .. path .. " -t d -H --ignore-file " .. vim.fn.expand("$HOME/.config/ignore/vim-ignore"),
-- 	})
-- end

-- return M

require("telescope").load_extension("arecibo")
