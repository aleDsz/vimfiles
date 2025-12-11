-- setup:Plugins
require("plugins")

-- setup:Theme
require("theme")

-- setup:Settings
require("settings")

-- setup:Mappings
require("mappings")

-- setup:Language Server Protocol
require("plugins.mason")
require("lsp")

-- setup:Plugin settings
require("plugins.airline")
require("plugins.claude-code")
require("plugins.dap")
require("plugins.editorconfig")
require("plugins.lazygit")
require("plugins.neo-tree")
require("plugins.neotest")
require("plugins.numbertoggle")
require("plugins.nvim-cmp")
require("plugins.nvim-treesitter")
require("plugins.startup")
require("plugins.yankstack")

-- setup:After LSP setup
require("autocmd")

-- setup:Plugin themes
require("theme.elixir")
require("theme.neo-tree")
