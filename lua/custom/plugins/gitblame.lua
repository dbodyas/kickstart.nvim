return {
  'f-person/git-blame.nvim',
  config = function()
    local git_blame = require 'gitblame'
    local git = require 'gitblame.git'
    git_blame.setup {
      --Note how the `gitblame_` prefix is omitted in `setup`
      enabled = false,
    }
    vim.keymap.set('n', '<leader>bc', '<cmd>GitBlameCopyCommitURL<CR>', { desc = 'Git [B]lame [C]opy commit url' })
    vim.keymap.set('n', '<leader>bo', function()
      git_blame.get_sha(function(sha)
        if sha then
          git.get_remote_url(function(remote_url)
            local commit_url = git.get_commit_url(sha, remote_url)
            local command = "silent! call system('open -a Google\\ Chrome\\ Beta " .. commit_url .. "')"
            vim.cmd(command)
          end)
        end
      end)
    end, { desc = 'Git [B]lame [O]pen in ChromeBeta' })
    vim.keymap.set('n', '<leader>bt', '<cmd>GitBlameToggle<CR>', { desc = 'Git [B]lame [T]oggle' })
  end,
}
