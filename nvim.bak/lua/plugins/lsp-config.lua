---@diagnostic disable: undefined-global
return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "html",
          "jsonls",
          "tsserver",
          "phpactor",
          "ruby_lsp",
          "lua_ls",
          "tailwindcss",
          "yamlls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
     local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.phpactor.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.html.setup({})
---@diagnostic disable-next-line: undefined-global
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
