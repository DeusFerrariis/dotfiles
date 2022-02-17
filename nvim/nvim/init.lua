require('plugins')
require('plugins/treesitter')
require('keybinds')
require('plugins/snip')
require('plugins/cmp')

-- Sets theme
require('zephyr')

local go = vim.o
local wo = vim.wo
local bo = vim.bo

-- Window vars
wo.relativenumber = true
go.timeoutlen=200
