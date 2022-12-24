vim.g.mapleader = ' '
local keymap = vim.keymap
local builtin = require('telescope.builtin')

keymap.set('i', 'hh', '<ESC>')
keymap.set('i', 'HH', '<ESC>')

keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

keymap.set('n', 'J', 'mzJ`z')

keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')

keymap.set('x', '<leader>p', '"_dP')

keymap.set('n', '<leader>sv', '<C-w>v')
keymap.set('n', '<leader>sh', '<C-w>s')
keymap.set('n', '<leader>se', '<C-w>=')
keymap.set('n', '<leader>sx', ':close<CR>')

keymap.set('n', '<leader>to', ':tabnew<CR>')
keymap.set('n', '<leader>tx', ':tabclose<CR>')
keymap.set('n', '<leader>tn', ':tabn<CR>')
keymap.set('n', '<leader>tp', ':tabp<CR>')

keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- telescope
keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap.set('n', '<leader>fg', '<cmd>Telescope git_files<CR>')
keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<CR>')
-- keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<CR>')
keymap.set('n', '<leader>fc', function ()
  builtin.grep_string({ search = vim.fn.input('Grep > ')});
end)
keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')

-- trouble.nvim
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

-- undotree
keymap.set('n', '<F5>', ':UndotreeToggle<CR>', {noremap = true})
keymap.set('n', '<leader>u', ':UndotreeShow<CR>', {noremap = true, silent = true})

