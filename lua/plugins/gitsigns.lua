-- [[ Gitsigns - Git integration ]]
-- Adds git related signs to the gutter, as well as utilities for managing changes
-- NOTE: Detect tabstop and shiftwidth automatically
return {
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    -- See `:help gitsigns` to understand what the configuration keys do
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
}
