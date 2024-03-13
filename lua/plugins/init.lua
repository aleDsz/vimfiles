local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.vim/plugged")

-- Base
Plug("nvim-lua/plenary.nvim")
Plug("MunifTanjim/nui.nvim")

-- Status bar/line
Plug("vim-airline/vim-airline")
Plug("vim-airline/vim-airline-themes")

-- Files and Folders
-- Plug("scrooloose/nerdtree")
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-neo-tree/neo-tree.nvim")

-- Editor
Plug("jeffkreeftmeijer/vim-numbertoggle")
Plug("nathanaelkane/vim-indent-guides")
Plug("editorconfig/editorconfig-vim")
Plug("Raimondi/delimitMate")
Plug("mhartington/formatter.nvim")

-- Support/Misc
Plug("folke/which-key.nvim")
Plug("kdheepak/lazygit.nvim")
Plug("andweeb/presence.nvim")
Plug("ryanoasis/vim-devicons")
Plug("chrisbra/unicode.vim")
Plug("haya14busa/incsearch.vim")
Plug("tjdevries/colorbuddy.vim")
Plug("startup-nvim/startup.nvim")
Plug("wakatime/vim-wakatime")

-- Copy&Paste
Plug("ConradIrwin/vim-bracketed-paste")
Plug("maxbrunsfeld/vim-yankstack")

-- Lint/Syntax
Plug("nvim-treesitter/nvim-treesitter-textobjects")
Plug("nvim-treesitter/nvim-treesitter-refactor")
Plug("JoosepAlviste/nvim-ts-context-commentstring")
Plug("hiphish/rainbow-delimiters.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("spywhere/detect-language.nvim")
Plug("jose-elias-alvarez/null-ls.nvim")
Plug("MunifTanjim/prettier.nvim")
Plug("lvimuser/lsp-inlayhints.nvim")

-- Tests
Plug("nvim-neotest/neotest")
Plug("folke/neodev.nvim")

-- Theme
Plug("dracula/vim", { ["as"] = "dracula" })
-- Plug("aledsz/dracula.vim")
Plug("bkegley/gloombuddy")
Plug("edeneast/nightfox.nvim")

-- LSP
Plug("neovim/nvim-lspconfig")
Plug("williamboman/mason.nvim", { ["do"] = ":MasonUpdate" })
Plug("williamboman/mason-lspconfig.nvim")
Plug("ray-x/lsp_signature.nvim")

-- Debugging
Plug("mfussenegger/nvim-dap")
Plug("rcarriga/nvim-dap-ui")

-- Snippets
Plug("hrsh7th/cmp-vsnip")
Plug("hrsh7th/vim-vsnip")

-- Code Completion
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("onsails/lspkind-nvim")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-emoji")
Plug("hrsh7th/cmp-nvim-lua")
Plug("hrsh7th/cmp-cmdline")
Plug("hrsh7th/cmp-nvim-lsp-document-symbol")

-- Languages
-- ASM
-- Plug 'tapichu/asm2d-vim'

-- C/C++
-- Plug 'm-pilia/vim-ccls'

-- C#
-- Plug 'OmniSharp/omnisharp-vim'
-- Plug 'nickspoons/vim-sharpenup'
Plug("Issafalcon/neotest-dotnet")

-- Crystal
-- Plug 'vim-crystal/vim-crystal'

-- D
-- Plug 'JesseKPhillips/d.vim'

-- Dockerfile
-- Plug 'ekalinin/Dockerfile.vim'

-- Elixir
-- Plug("elixir-lang/vim-elixir")
Plug("jfpedroza/neotest-elixir")

-- Erlang
-- Plug 'vim-erlang/vim-erlang-runtime'
-- Plug 'vim-erlang/vim-erlang-compiler'
-- Plug 'vim-erlang/vim-erlang-omnicomplete'
-- Plug 'vim-erlang/vim-erlang-tags'

-- Go
-- Plug('fatih/vim-go', { ['do'] = ':GoUpdateBinaries' })
Plug("nvim-neotest/neotest-go")

-- Javascript
-- Plug 'pangloss/vim-javascript'
Plug("nvim-neotest/neotest-jest")

-- LuaU
Plug("polychromatist/luau-vim")
Plug("lopi-py/luau-lsp.nvim")
Plug("nvim-neotest/neotest-plenary")

-- Markdown
-- Plug 'nelstrom/vim-markdown-folding'

-- OCaml
-- Plug('rgrinberg/vim-ocaml', { ['for'] = ['ocaml', 'opam', 'dune'] })

-- PHP
-- Plug 'StanAngeloff/php.vim'
-- Plug 'noahfrederick/vim-composer'
Plug("jwalton512/vim-blade")
Plug("olimorris/neotest-phpunit")

-- R
Plug("shunsambongi/neotest-testthat")

-- ReasonML
-- Plug('jordwalke/vim-reasonml', { ['for'] = ['reason', 'ocaml'] })

-- Ruby
-- Plug 'vim-ruby/vim-ruby'
Plug("olimorris/neotest-rspec")

-- Rust
Plug("rouge8/neotest-rust")

-- Terraform
-- Plug 'hashivim/vim-terraform'

vim.call("plug#end")
