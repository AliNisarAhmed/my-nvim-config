local vim = vim

require("packer").startup(function(use)
  use("wbthomason/packer.nvim")

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup({
        update_focused_file = {
          -- enables the feature
          enable = true,
        },
        view = {
          side = 'right'
        }
      })
    end
  }

  use("glepnir/lspsaga.nvim")
  use("kabouzeid/nvim-lspinstall")
  use("nvim-treesitter/nvim-treesitter")
  use("hrsh7th/nvim-compe")
  use("neovim/nvim-lspconfig")
  use("folke/tokyonight.nvim")
  use('Pocco81/Catppuccino.nvim')
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use({
    "hoob3rt/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
  })

  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
  })

  use('marklcrns/vim-smartq')

  use({
    "akinsho/nvim-bufferline.lua",
    requires = "kyazdani42/nvim-web-devicons",
  })

  use("jiangmiao/auto-pairs")
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  })

  use({
    "glepnir/dashboard-nvim",
    opt = true,
    cmd = {
      "Dashboard",
      "DashboardChangeColorscheme",
      "DashboardFindFile",
      "DashboardFindHistory",
      "DashboardFindWord",
      "DashboardJumpMarks",
      "DashboardNewfile",
    },
  })

  use({
    "lewis6991/gitsigns.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  })

  use("simrat39/symbols-outline.nvim")
  use("folke/which-key.nvim")
  use("tpope/vim-commentary")
  use("kdheepak/lazygit.nvim")
  use("yuttie/comfortable-motion.vim")
  use("mhartington/formatter.nvim")
  use({
    "folke/twilight.nvim",
    opt = true,
  })
  use("gelguy/wilder.nvim")
  use({ "maxmellon/vim-jsx-pretty", opt = true })
  use({
    "folke/zen-mode.nvim",
    opt = true,
  })

  use({ "tweekmonster/startuptime.vim", opt = true })

  use({ "vimwiki/vimwiki", opt = true })

  use("ray-x/lsp_signature.nvim")

  use({ "creativenull/diagnosticls-nvim", opt = true })

  use({ "folke/lua-dev.nvim", opt = true })

  use {"iamcco/markdown-preview.nvim", run = [[sh -c 'cd app && yarn install']]}

  use('elixir-editors/vim-elixir')

  for _, plugin in ipairs(vim.g.kyoto_extra_plugins) do
    use(plugin)
  end
end)
