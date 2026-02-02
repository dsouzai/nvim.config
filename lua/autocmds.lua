-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

--[[
-- Deletes all trailing whitespaces in a file if it's not binary nor a diff.
--]]
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Trim trailing whitespaces',
  callback = function()
    if not vim.o.binary and vim.o.filetype ~= 'diff' then
      local current_view = vim.fn.winsaveview()
      vim.cmd [[keeppatterns %s/\(\(\s\+\)\|\r\)$//e]]
      vim.fn.winrestview(current_view)
    end
  end,
})

--[[
-- Changes tab values based for OpenJ9/OMR Compiler components
--]]
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  desc = 'Directory specific nvim options',
  callback = function()
    local buf_name = vim.api.nvim_buf_get_name(0)
    if string.match(buf_name, '.+%.cp?p?$') or string.match(buf_name, '.+%.hp?p?$') then
      if string.match(buf_name, '.+/omr/compiler/.+') then
        vim.opt.shiftwidth = 4
        vim.opt.tabstop = 4
        vim.opt.expandtab = true
      elseif string.match(buf_name, '.+/openj9/runtime/compiler/.+') then
        vim.opt.shiftwidth = 3
        vim.opt.tabstop = 3
        vim.opt.expandtab = true
      elseif string.match(buf_name, '.+/omr/.+') or string.match(buf_name, '.+/openj9/.+') then
        vim.opt.shiftwidth = 4
        vim.opt.tabstop = 4
        vim.opt.expandtab = false
      else
        vim.opt.shiftwidth = 4
        vim.opt.tabstop = 4
        vim.opt.expandtab = true
      end
    end
  end,
})

--[[
-- In diff mode, move cursor to the window on the right side.
--]]
if vim.opt.diff:get() then
  vim.api.nvim_create_autocmd('VimEnter', {
    callback = function()
      local key = vim.api.nvim_replace_termcodes('<C-w>w', true, false, true)
      vim.api.nvim_feedkeys(key, 'n', false)
    end,
    once = true,
  })
end
