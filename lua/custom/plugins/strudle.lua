return {
  {
    'gruvw/strudel.nvim',
    enabled = false,
    build = 'npm install',
    config = function()
      require('strudel').setup {
        update_on_save = true,
      }
    end,
  },
}
