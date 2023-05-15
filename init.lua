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
require("plugins.mason")
require("plugins.nerdtree")
require("plugins.nvim-cmp")
require("plugins.nvim-treesitter")
require("plugins.numbertoggle")
require("plugins.prettier")
require("plugins.yankstack")

-- Start with NERDTree openned
vim.cmd([[ autocmd VimEnter * NERDTree ]])
