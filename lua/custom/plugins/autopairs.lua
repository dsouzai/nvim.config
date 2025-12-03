return {
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,

    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    opts = {
      -- tends to eat closing parentheses
      disable_filetype = { 'racket', 'scheme' },
    },
  },
}
