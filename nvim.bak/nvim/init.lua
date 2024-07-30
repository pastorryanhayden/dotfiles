require("config.lazy")

-- Setup for telescope
local builtin = require('telescope.builtin')

-- Map :Ff to :find_files
vim.api.nvim_create_user_command('Ff', function()
  builtin.find_files({})
end, {})

-- Map :Fb to search buffers
vim.api.nvim_create_user_command('Fb', function()
  builtin.buffers({})
end, {})

-- Disable netrw and replace with neotree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Map :Ex to :Neotree
vim.api.nvim_create_user_command('Ex', function()
  vim.cmd('Neotree')  -- Executes :NeoTree when :Ex is called
end, {})

require("neo-tree").setup({
  close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    indent = {
      indent_size = 2,
      padding = 1, -- extra padding on left hand side
      with_markers = true,
      indent_marker = "│",
      last_indent_marker = "└",
      highlight = "NeoTreeIndentMarker",
      with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
      expander_collapsed = "",
      expander_expanded = "",
      expander_highlight = "NeoTreeExpander",
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
      default = "*",
    },
    modified = {
      symbol = "[+]",
      highlight = "NeoTreeModified",
    },
    name = {
      trailing_slash = false,
      use_git_status_colors = true,
      highlight = "NeoTreeFileName",
    },
    git_status = {
      symbols = {
        -- Change type
        added = "✚",
        modified = "",
        deleted = "✖",
        renamed = "",
        -- Status type
        untracked = "",
        ignored = "",
        unstaged = "",
        staged = "",
        conflict = "",
      },
    },
  },
  window = {
    position = "current",
    width = 80,
    mappings = {
      ["<space>"] = "toggle_node",
      ["<2-LeftMouse>"] = "open",
      ["<cr>"] = "open",
      ["S"] = "split_with_window_picker",
      ["s"] = "vsplit_with_window_picker",
      ["t"] = "open",
      ["C"] = "close_node",
      ["a"] = "add",
      ["A"] = "add_directory",
      ["d"] = "delete",
      ["r"] = "rename",
      ["c"] = "copy_to_clipboard",
      ["x"] = "cut_to_clipboard",
      ["p"] = "paste_from_clipboard",
      ["q"] = "close_window",
    },
  },
  nesting_rules = {},
  filesystem = {
    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = true,
      hide_hidden = false, -- only works on Windows for hidden files/directories
    },
    follow_current_file = true,
    group_empty_dirs = true, -- when true, empty folders will be grouped together
    hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
    use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
  },
  buffers = {
    follow_current_file = true, -- This will find and focus the file in the active buffer
    group_empty_dirs = true, -- when true, empty folders will be grouped together
  },
  git_status = {
    window = {
      position = "float",
      mappings = {
        ["A"] = "git_add_all",
        ["gu"] = "git_unstage_file",
        ["ga"] = "git_add_file",
        ["gr"] = "git_revert_file",
        ["gc"] = "git_commit",
        ["gp"] = "git_push",
        ["gg"] = "git_commit_and_push",
      },
    },
  },
})



