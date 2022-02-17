local cmp = require "cmp"
local luasnip = require "luasnip"
cmp.setup {
	snippet = {expand = function(args) luasnip.lsp_expand(args.body) end},
	mapping = {
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {"i", "c"}),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {"i", "c"}),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<Esc>'] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}),
		['<CR>'] = cmp.mapping({
			i = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = false}),
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif cmp.get_selected_entry() ~=nil and luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, {"i", "s"}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {"i", "s"}),
	},
	completion = {keyword_length = 2},
	documentation = {border = {"╭", "─", "╮", "│", "╯", "─", "╰", "│"}},
	experimental = {native_menu = false, ghost_text = true},
}

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
for _, lsp in pairs({"gopls"}) do
	require('lspconfig')[lsp].setup {
		capabilities=capabilities
	}
end
