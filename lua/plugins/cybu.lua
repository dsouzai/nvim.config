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
    end,
  },
}
