local ls = require "luasnip"
local s, i, t = ls.s, ls.insert_node, ls.text_node
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node

ls.config.set_config {
    history = true,
}

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_lua").load({paths = "../snippets.all"})

-- Go to next snippet
vim.keymap.set({"i", "s"}, "<c-k>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true }
)

-- Go to previous snippet
vim.keymap.set({"i", "s"}, "<c-j>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true }
)

vim.api.nvim_set_keymap("i", "<C-l>", "<cmd>lua require(\"luasnip.extras.select_choice\")()<cr>", {})
vim.api.nvim_set_keymap("s", "<C-l>", "<cmd>lua require(\"luasnip.extras.select_choice\")()<cr>", {})

