local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Keybindings
map('i', 'jj', '<esc>', options)

-- Arrow Keys are Silly / Disable Arrow Keys
map('i', '<Left>', '<Nop>', options)
map('i', '<Right>', '<Nop>', options)
map('i', '<Up>', '<Nop>', options)
map('i', '<Down>', '<Nop>', options)
map('n', '<Left>', '<Nop>', options)
map('n', '<Right>', '<Nop>', options)
map('n', '<Up>', '<Nop>', options)
map('n', '<Down>', '<Nop>', options)

-- Telescope
map('n', '<space>ff', ':Telescope find_files theme=dropdown prompt_prefix=🔍 <cr>', options)
map('i', '<space>ff', '<esc>:Telescope find_files theme=dropdown prompt_prefix=🔍  <cr>', options)
map('n', '<space>fb', ':Telescope buffers theme=dropdown prompt_prefix=🔍 <cr>', options)
map('i', '<space>fb', '<esc>:Telescope buffers theme=dropdown prompt_prefix=🔍 <cr>', options)

-- Commands
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
