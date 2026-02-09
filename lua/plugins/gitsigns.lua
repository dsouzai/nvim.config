return {
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    enabled = true,
    config = function()
      if not vim.opt.diff:get() then
        local gs = require 'gitsigns'
        vim.keymap.set('n', ']c', function()
          gs.nav_hunk 'next'
          vim.api.nvim_feedkeys('zz', 'xn', false)
        end, { desc = 'Next hunk' })
        vim.keymap.set('n', '[c', function()
          gs.nav_hunk 'prev'
          vim.api.nvim_feedkeys('zz', 'xn', false)
        end, { desc = 'Prev hunk' })
      end
    end,
    --[[
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    --]]
  },
}
