-- [[ zk-nvim - Note-taking ]]
return {
  'zk-org/zk-nvim',
  config = function()
    require('zk').setup {
      -- Use Telescope for better UI
      picker = 'telescope',

      lsp = {
        config = {
          name = 'zk',
          cmd = { 'zk', 'lsp' },
          filetypes = { 'markdown' },
        },
        auto_attach = {
          enabled = true,
          filetypes = { 'markdown' },
        },
      },
    }

    -- Keybindings
    -- Create notes
    vim.keymap.set('n', '<leader>zn', "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", { desc = '[Z]K [N]ew note' })
    vim.keymap.set('n', '<leader>zd', "<Cmd>ZkNew { group = 'daily' }<CR>", { desc = '[Z]K [D]aily note' })

    -- Browse notes
    vim.keymap.set('n', '<leader>zo', "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = '[Z]K [O]pen notes' })
    vim.keymap.set('n', '<leader>zt', '<Cmd>ZkTags<CR>', { desc = '[Z]K [T]ags' })

    -- Search notes
    vim.keymap.set('n', '<leader>zf', "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", { desc = '[Z]K [F]ind notes' })

    -- Note in insert mode: [[  triggers link insertion automatically via LSP
  end,
}

