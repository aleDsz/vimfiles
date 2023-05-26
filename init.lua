-- setup:Plugins
require("plugins")

-- setup:Theme
require("theme")

-- setup:Settings
require("settings")

-- setup:Mappings
require("mappings")

-- setup:Language Server Protocol
require("lsp")

-- setup:Plugin settings
require("plugins.airline")
require("plugins.editorconfig")
require("plugins.formatter")
require("plugins.lazygit")
require("plugins.lsp-inlayhints")
require("plugins.luau-lsp")
require("plugins.mason")
require("plugins.neo-tree")
-- require("plugins.nerdtree")
require("plugins.nvim-cmp")
require("plugins.nvim-treesitter")
require("plugins.numbertoggle")
require("plugins.prettier")
require("plugins.startup")
require("plugins.yankstack")

-- setup:LSP custom settings
require("lsp.elixirls")
require("lsp.erlangls")
require("lsp.java_language_server")
require("lsp.jsonls")
require("lsp.lua_ls")
require("lsp.rls")
require("lsp.tailwindcss")

-- setup:Plugin themes
require("theme.neo-tree")

-- Start with NERDTree openned
-- vim.cmd([[ autocmd VimEnter * NERDTree ]])
-- vim.cmd([[ autocmd VimEnter * NERDTree ]])
