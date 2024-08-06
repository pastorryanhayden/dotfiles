-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'NeoTree toggle' },
  },
  opts = {
    close_if_last_window = true, -- Close Neo-tree if it is the last window open
    popup_border_style = 'rounded',
    filesystem = {
      follow_current_file = true,
      group_empty_dirs = true,
      hijack_netrw_behavior = 'open_default',
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
      buffers = {
        show_unloaded = true,
      },
    },
    -- Open Neo-tree automatically when opening a directory
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function(data)
        -- buffer is a directory
        local directory = vim.fn.isdirectory(data.file) == 1

        if directory then
          -- create a new, empty buffer
          vim.cmd 'enew'

          -- wipe the directory buffer
          vim.cmd('bwipeout ' .. data.buf)

          -- change to the directory
          vim.cmd('cd ' .. data.file)

          -- open the tree
          vim.cmd 'Neotree'
        end
      end,
    }),
  },
}
