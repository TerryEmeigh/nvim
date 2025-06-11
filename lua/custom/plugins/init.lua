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
  -- LuaLine (Custom StatusLine)
  {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup {
        options = {
          theme = 'vscode', -- specify theme here (i.e. "tokyonight" or "auto")
          icons_enabled = true,
          section_separators = { left = '', right = '' },
          component_separators = { left = '', right = '' },
        },
      }
    end,
  },
  -- Mofiqul colorscheme
  {
    'Mofiqul/vscode.nvim',
    priority = 1000, -- Load before all the other plugins
    config = function()
      -- set background to match theme style
      vim.o.background = 'dark'

      require('vscode').setup {
        transparent = true,
        style = 'dark',
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        overrides = function()
          return {
            -- Main editing areas
            Normal = { bg = 'none' },
            NormalNC = { bg = 'none' },
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },

            -- Popups and menus
            Pmenu = { bg = 'none' },
            PmenuSel = { bg = 'none' },
            PmenuSbar = { bg = 'none' },
            PmenuThumb = { bg = 'none' },

            -- Status and command line
            StatusLine = { bg = 'none' },
            StatusLineNC = { bg = 'none' },
            WinBar = { bg = 'none' },
            WinBarNC = { bg = 'none' },
            MsgArea = { bg = 'none' },
            Cmdline = { bg = 'none' },
            NoiceCmdlinePopup = { bg = 'none' },
            NoiceCmdlinePopupBorder = { bg = 'none' },

            -- Tabs and splits
            TabLine = { bg = 'none' },
            TabLineSel = { bg = 'none' },
            TabLineFill = { bg = 'none' },
            VertSplit = { bg = 'none' },
            WinSeparator = { bg = 'none' },

            -- Telescope and floating UIs
            TelescopeNormal = { bg = 'none' },
            TelescopeBorder = { bg = 'none' },
            TelescopePromptNormal = { bg = 'none' },
            TelescopePromptBorder = { bg = 'none' },
            TelescopePreviewNormal = { bg = 'none' },
            TelescopePreviewBorder = { bg = 'none' },
            TelescopeResultsNormal = { bg = 'none' },
            TelescopeResultsBorder = { bg = 'none' },

            -- LSP floating windows
            LspInfoBorder = { bg = 'none' },
            LspFloatWinNormal = { bg = 'none' },

            -- Treesitter context
            TreesitterContext = { bg = 'none' },

            -- Diagnostic sings (errors, warnings, etc.)
            DiagnosticSignError = { bg = 'none' },
            DiagnosticSignWarn = { bg = 'none' },
            DiagnosticSignInfo = { bg = 'none' },
            DiagnosticSignHint = { bg = 'none' },

            -- Git signs (for gitsigns.nvim)
            GitSignsAdd = { bg = 'none' },
            GitSignsChange = { bg = 'none' },
            GitSignsDelete = { bg = 'none' },

            -- Misc
            SignColumn = { bg = 'none' },
            FoldColumn = { bg = 'none' },
            LineNr = { bg = 'none' },
            CursorLineNr = { bg = 'none' },
            EndOfBuffer = { bg = 'none' },
            ColorColumn = { bg = 'none' },
            CursorLine = { bg = 'none' },

            -- Language highlights
            ['@variable.builtin'] = { italic = false },
          }
        end,
      }
      vim.cmd.colorscheme 'vscode'
      -- force override for stubborn groups
      vim.api.nvim_set_hl(0, 'CursorLine', { bg = 'none' })
    end,
  },
}
