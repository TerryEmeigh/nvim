-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.ruff_lsp = {}
      return opts
    end,
  },
  -- Kanagawa colorscheme
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,  -- Load before all the other plugins
    config = function()
      require("kanagawa").setup({
        theme = "wave",  -- or "dragon" or "lotus"
        background = {
          dark = "wave",
          light = "lotus",
        },
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  }
}
