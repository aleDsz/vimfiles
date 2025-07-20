-- setup:Plugins
require("plugins")

-- setup:Theme
require("theme")

-- setup:Settings
require("settings")

-- setup:Mappings
require("mappings")

-- setup:NeoDev (we need to setup before LSP config)
-- require("plugins.neodev")

-- setup:Language Server Protocol
require("lsp")

-- setup:Plugin settings
require("plugins.airline")
require("plugins.claude-code")
require("plugins.dap")
require("plugins.editorconfig")
-- require("plugins.elixir-tools")
require("plugins.formatter")
require("plugins.lazygit")
require("plugins.luau-lsp")
require("plugins.mason")
require("plugins.neo-tree")
require("plugins.neotest")
require("plugins.nvim-cmp")
require("plugins.nvim-treesitter")
require("plugins.numbertoggle")
require("plugins.prettier")
require("plugins.startup")
-- require("plugins.tailwind-tools")
require("plugins.yankstack")

-- setup:LSP custom settings
require("lsp.csharp_ls")
require("lsp.elixirls")
require("lsp.intelephense")
require("lsp.java_language_server")
require("lsp.jsonls")
require("lsp.lua_ls")
require("lsp.luau_lsp")
require("lsp.rust_analyzer")
require("lsp.tailwindcss")

-- setup:After LSP setup
require("autocmd")

-- setup:Plugin themes
require("theme.elixir")
require("theme.neo-tree")
