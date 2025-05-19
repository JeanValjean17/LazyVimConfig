-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  -- Ensure treesitter has C/C++ parser for syntax/highlighting
  { "nvim-treesitter/nvim-treesitter", opts = { ensure_installed = { "cpp" } } },

  -- Clangd extensions (inlay hints, AST, header switching)
  { "p00f/clangd_extensions.nvim",     lazy = true },

  -- Configure clangd via nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          -- Add a keybinding for switching between source/header
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
          -- (Optional) custom clangd command or capabilities can be set here
          -- cmd = { "clangd", "--background-index", "--clang-tidy" },
        },
      },
    },
  },
}
