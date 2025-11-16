return {
  {
    'ghillb/cybu.nvim',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('cybu').setup()

      vim.keymap.set('n', '[b', '<Plug>(CybuPrev)')
      vim.keymap.set('n', ']b', '<Plug>(CybuNext)')
      vim.keymap.set('n', '<Tab>', '<plug>(CybuLastusedNext)')
      vim.keymap.set('n', '<S-Tab>', '<plug>(CybuLastusedPrev)')
    end,
  },
}
