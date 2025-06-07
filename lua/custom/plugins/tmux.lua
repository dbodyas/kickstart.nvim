return {
  'christoomey/vim-tmux-navigator',
  lazy = false,
  config = function()
    vim.keymap.set('n', '<C-M-Left>', '<cmd>TmuxNavigateLeft<CR>', { desc = 'Tmux Left Window' })
    vim.keymap.set('n', '<C-M-Right>', '<cmd>TmuxNavigateRight<CR>', { desc = 'Tmux Right Window' })
    vim.keymap.set('n', '<C-M-Up>', '<cmd>TmuxNavigateUp<CR>', { desc = 'Tmux Up Window' })
    vim.keymap.set('n', '<C-M-Down>', '<cmd>TmuxNavigateDown<CR>', { desc = 'Tmux Down Window' })

    --vim.cmd [[nnoremap \ :Neotree reveal_file=%:p<cr>]]
  end,
}
