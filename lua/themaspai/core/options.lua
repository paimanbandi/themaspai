local opt = vim.opt

opt.number = true

opt.scrolloff = 10

opt.updatetime = 50

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'
opt.colorcolumn = '80'

opt.backspace = 'indent,eol,start'

opt.clipboard:append('unnamedplus')

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append('-')

opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'

local api = vim.api
local M = {}
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end

local autoCommands = {
    open_folds = {
        {"BufReadPost,FileReadPost", "*", "normal zR"}
    }
}

M.nvim_create_augroups(autoCommands)



