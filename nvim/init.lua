require('keybinds')
require('plugins')
require('plugins/treesitter')
require('plugins/cmp')
require('plugins/statusline')
require('plugins/transpt')
require('plugins/rust-lsp')
require("mason").setup()
require('nvim-tree').setup()

-- Sets theme
vim.cmd[[let g:gruvbox_material_background = "medium"]]
vim.cmd[[let g:gruvbox_material_palette = "mix"]]
vim.cmd[[set background=dark]]
vim.cmd[[colorscheme gruvbox-material]]

local go = vim.o
local wo = vim.wo
local bo = vim.bo

-- Window vars
wo.relativenumber = true

-- Global vars
go.termguicolors = true
go.timeoutlen=200
go.cursorcolumn = true
go.cursorline = true
go.tabstop = 4
go.softtabstop = 4
go.shiftwidth = 4

function _G.SetTab(spaces)
	go.tabstop = spaces
	go.softtabstop = spaces
	go.shiftwidth = spaces
end

vim.cmd[[command! -nargs=1 SetTab :lua _G.SetTab(<args>)]]

-- LSP Diagnostics Options Setup 
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = ''
  })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
	border = border,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

vim.cmd [[hi Pmenu NONE]]

-- disable netrw
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
