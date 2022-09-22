local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
options = { noremap = true }

-- Keybindings
map('i', 'jj', '<esc>', options)
map('n', '<space>bc', ':BufferClose ', options)

-- Arrow Keys are Silly / Disable Arrow Keys
map('i', '<Left>', '<Nop>', options)
map('i', '<Right>', '<Nop>', options)
map('i', '<Up>', '<Nop>', options)
map('i', '<Down>', '<Nop>', options)
map('n', '<Left>', '<Nop>', options)
map('n', '<Right>', '<Nop>', options)
map('n', '<Up>', '<Nop>', options)
map('n', '<Down>', '<Nop>', options)

-- NvimTree
map('n', '<C-N>', ':NvimTreeToggle <cr>', options)

-- Telescope
map('n', '<space>ff', ':Telescope find_files theme=dropdown prompt_prefix="🗎  "<cr>', options)
map('i', '<space>ff', '<esc>:Telescope find_files theme=dropdown prompt_prefix="🗎  "<cr>', options)
map('n', '<space>fb', ':Telescope buffers theme=dropdown prompt_prefix=🗗  <cr>', options)
map('i', '<space>fb', '<esc>:Telescope buffers theme=dropdown prompt_prefix=🗗  <cr>', options)
map('n', '<space>fg', ':Telescope live_grep theme=dropdown prompt_prefix=🔍 <cr>', options)
map('i', '<space>fg', '<esc>:Telescope live_grep theme=dropdown prompt_prefix=🔍  <cr>', options)

-- Lsp
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', options)
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', options)
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', options)
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', options)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', options)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', options)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', options)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', options)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', options)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', options)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', options)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', options)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', options)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', options)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', options)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', options)
map('n', '<space>fo', '<cmd>lua vim.lsp.buf.formatting()<CR>', options)

-- Commands
cmd(':command! WQ wq')
cmd(':command! WQ wq')
cmd(':command! Wq wq')
cmd(':command! Wqa wqa')
cmd(':command! W w')
cmd(':command! Q q')
