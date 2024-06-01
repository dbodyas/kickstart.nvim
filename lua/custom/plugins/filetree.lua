return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    's1n7ax/nvim-window-picker',
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        follow_current_file = {
          enabled = false,
        },
      },
    }
    vim.keymap.set('n', '<C-b><C-k>', '<cmd>Neotree toggle<CR>', { desc = 'Show Folder Tree' })
    vim.cmd [[nnoremap \ :Neotree reveal_file=%:p<cr>]]
  end,
}
