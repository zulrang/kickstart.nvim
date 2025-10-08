return {
  'hkupty/iron.nvim',
  config = function(plugins, opts)
    local iron = require 'iron.core'

    iron.setup {
      config = {
        scratch_repl = true,
        repl_definition = {
          python = {
            command = { 'python' },
          },
        },
        repl_open_cmd = require('iron.view').right(60),
      },
      keymaps = {
        send_motion = '<leader>rc',
      },
      hightlight = {
        italic = true,
      },
      ignore_blank_lines = true,
    }

    vim.keymap.set('n', '<space>rs', '<cmd>IronRepl<cr>')
    vim.keymap.set('n', '<space>rr', '<cmd>IronRestart<cr>')
    vim.keymap.set('n', '<space>rF', '<cmd>IronFocus<cr>')
    vim.keymap.set('n', '<space>rh', '<cmd>IronHide<cr>')
  end,
}
