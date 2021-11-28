-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer in your `opt` pack.
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function()
  -- Packer can manage itself as an optional plugin.
  use({ "wbthomason/packer.nvim", opt = true})

  -- The plugins, alphabetically sorted.
  use({ "ap/vim-css-color", opt = true, ft = { "css", "scss", "sass", "less" }})
  use({ "glepnir/lspsaga.nvim" })
  use({ "hrsh7th/nvim-compe", requires = {{ "hrsh7th/vim-vsnip" }}})
  use({ "junegunn/goyo.vim", opt = true, ft = { "markdown", "tex" }})
  use({ "junegunn/gv.vim" })
  use({ "junegunn/vim-easy-align" })
  use({ "junegunn/vim-peekaboo" })
  use({ "liuchengxu/vista.vim" })
  use({ "mfussenegger/nvim-dap" })
  use({ "neovim/nvim-lspconfig", requires = { "nvim-lua/lsp_extensions.nvim" }})
  use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } }})
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use({ "scalameta/nvim-metals" }) -- TODO: Figure out how to make metals stuff only run in scala repos.
  use({ "sheerun/vim-polyglot" })
  use({ "sjl/gundo.vim" })
  use({ "tpope/vim-abolish" })
  use({ "tpope/vim-commentary" })
  use({ "tpope/vim-dadbod", opt = true, ft = { "sql", "psql" }})
  use({ "tpope/vim-dispatch", opt = true, cmd = { "Dispatch", "Make", "Focus", "Start" }})
  use({ "tpope/vim-eunuch" })
  use({ "tpope/vim-fugitive" })
  use({ "tpope/vim-jdaddy", opt = true, ft = { "json" }})
  use({ "tpope/vim-projectionist" })
  use({ "tpope/vim-repeat" })
  use({ "tpope/vim-rhubarb" })
  use({ "tpope/vim-scriptease", opt = true, ft = "vim" })
  use({ "tpope/vim-sensible" })
  use({ "tpope/vim-sleuth" })
  use({ "tpope/vim-speeddating" })
  use({ "tpope/vim-surround" })
  use({ "tpope/vim-tbone" })
  use({ "tpope/vim-unimpaired" })
  use({ "tpope/vim-vinegar" })
  use({ "baskerville/bubblegum" })
--  use({ "vim-pandox/vim-pandoc" })
--  use({ "vim-pandox/vim-pandoc-syntax" })
  use "flazz/vim-colorschemes"
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
      view = {
        width = "13%",
        auto_resize = true
      }
    } end
  }
  use {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use "lewis6991/gitsigns.nvim"
  use({ "glepnir/galaxyline.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true }})
end)
