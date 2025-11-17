return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- override ayu_dark a bit
    local theme = require 'lualine.themes.ayu_dark'
    theme.normal.c.bg = '#000000'
    theme.inactive.c.bg = '#000000'

    require('lualine').setup {
      options = {
        theme = theme,
      },
      sections = {
        lualine_c = {
          {
            'filename',
            file_status = true,
            path = 1,
          },
        },
      },
    }
  end,
}
