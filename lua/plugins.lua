-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Add plugins
require('lazy').setup({
  { -- lsp configuration & plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'j-hui/fidget.nvim', tag = 'legacy' },

      -- 'opts = {}' is equivalent to 'require('neodev').setup({})'
      { 'folke/neodev.nvim', opts = {} },
    },
  },

  { -- completion
    'hrsh7th/nvim-cmp',
    dependencies = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'rafamadriz/friendly-snippets',
    },
  },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
    -- config = function()
    --   require 'nvim-treesitter.install'.compilers = { vim.NIL, "gcc", "clang", "cl", "zig" }
    -- end
  },

  { -- fuzzy finder (files, lsp, etc.)
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
    },
  },

  { -- statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    opts = {
      options = {
        icons_enabled = false,
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  { -- commenting
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },

  { -- adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
  },

  { -- add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    config = function()
      require('indent_blankline').setup({
        show_trailing_blankline_indent = false,
      })

      vim.cmd.highlight "IndentBlanklineChar guifg=#3c3836 gui=nocombine"
    end,
  },

  { -- colorscheme
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
  },
})
