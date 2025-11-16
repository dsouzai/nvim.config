-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

------------------------------------------------------------------------------------------
-- normal mode overrides

-- navigation
vim.keymap.set('n', '<leader>c/', '/<Bslash>c', { desc = 'Case-insensitive forward search' })
vim.keymap.set('n', '<leader>c?', '?<Bslash>c', { desc = 'Case-insensitive forward search' })
vim.keymap.set('n', '<leader>bl', ':b#<CR>', { desc = 'Toggle between the most recently used buffer' })
vim.keymap.set('n', 'J', '<C-e>', { desc = 'Same as C-e' })
vim.keymap.set('n', 'K', '<C-y>', { desc = 'Same as C-y' })
--map('n', '<C-d>', '<C-b>', { desc = 'Same as C-b' })
vim.keymap.set('n', '<C-n>', '<tab>', { desc = 'Override TS mapping of C-n' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = '<C-d> but centering the screen' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = '<C-u> but centering the screen' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'n but centering the screen' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'N but centering the screen' })

-- diff navigation
vim.keymap.set('n', ']c', ']czz', { desc = 'Center screen after next change' })
vim.keymap.set('n', '[c', '[czz', { desc = 'Center screen after prev change' })

-- misc
vim.keymap.set('n', ';', ':', { desc = 'CMD enter command mode' })
vim.keymap.set('n', '<leader>o', 'o<Esc>', { desc = 'Insert line below, stay in normal mode' })
vim.keymap.set('n', '<leader>O', 'O<Esc>', { desc = 'Insert line below, stay in normal mode' })
--map('n', '<C-m>', 'zf%za', {})
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = 'Close current buffer' })

-- treesitter
vim.keymap.set('n', '<leader>tv', ':NvimTreeToggle<CR>', { desc = 'Toggle treeview' })
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = 'Focus on treeview ' })

------------------------------------------------------------------------------------------
-- insert mode overrides

vim.keymap.set('i', '<M-b>', '<Esc>bi', { desc = 'Move one word back' })
vim.keymap.set('i', '<M-f>', '<Esc>lwi', { desc = 'Move one word forward' })

------------------------------------------------------------------------------------------
-- visual mode overrides

-- greatest remap ever
vim.keymap.set('x', '<leader>p', '"_dP', { desc = 'Paste over selection, put selection into void register' })

------------------------------------------------------------------------------------------
-- other overrides

-- clipboard mappings; needs xclip
vim.keymap.set('x', '<leader>cy', '"+y', { desc = 'Yank to clipboard ' })
vim.keymap.set('n', '<leader>cy', '"+y', { desc = 'Yank to clipboard ' })
vim.keymap.set('x', '<leader>cd', '"+d', { desc = 'Cut to clipboard ' })
vim.keymap.set('n', '<leader>cd', '"+d', { desc = 'Cut to clipboard ' })
vim.keymap.set('x', '<leader>cp', '"+p', { desc = 'Paste from clipboard ' })
vim.keymap.set('n', '<leader>cp', '"+p', { desc = 'Paste from clipboard ' })
