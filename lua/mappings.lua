-- Tabs
vim.api.nvim_set_keymap("n", "<leader>t", "<CMD>tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>te", "<CMD>tabedit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", "<CMD>tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tn", "<CMD>tabnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tp", "<CMD>tabprevious<CR>", { noremap = true })

-- Line movement
-- Go to start of line with H and to the end with L
vim.api.nvim_set_keymap("", "H", "^", { noremap = true })
vim.api.nvim_set_keymap("", "L", "$", { noremap = true })

-- Split windows
-- Move around easily
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

-- Resize
vim.api.nvim_set_keymap("n", "<leader>+", "<CMD>vertical resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>-", "<CMD>vertical resize -5<CR>", { noremap = true, silent = true })

-- Folding
-- Toggles folding with space
vim.api.nvim_set_keymap("n", "<Space>", "za", { noremap = true })

-- Open all folds
vim.api.nvim_set_keymap("n", "zO", "zR", { noremap = true })

-- Close all folds
vim.api.nvim_set_keymap("n", "zC", "zM", { noremap = true })

-- Close current fold
vim.api.nvim_set_keymap("n", "zc", "zc", { noremap = true })

-- Close all folds except the current one
vim.api.nvim_set_keymap("n", "zf", "mzzMzvzz", { noremap = true })

-- Search
vim.api.nvim_set_keymap("", "<leader>sf", "<PLUG>(incsearch-forward)", {})
vim.api.nvim_set_keymap("", "<leader>sb", "<PLUG>(incsearch-backward)", {})
vim.api.nvim_set_keymap("", "<leader>ss", "<PLUG>(incsearch-stay)", {})

-- Spell
vim.api.nvim_set_keymap("n", "<leader>sc", "<CMD>set spell!<CR>", { noremap = true })

-- Misc
-- Wrap current paragraph
vim.api.nvim_set_keymap("", "<leader>w", "gqap", { noremap = true })

-- Toggles hlsearch
vim.api.nvim_set_keymap("n", "<leader>hs", "<CMD>set hlsearch!<CR>", { noremap = true })

-- Maps <C-C> to <esc>
vim.api.nvim_set_keymap("", "<C-C>", "<ESC>", { noremap = true })

-- Set current file executable
vim.api.nvim_set_keymap("n", "<leader>xx", "<CMD>!chmod +x %<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>XX", "<CMD>!chmod -x %<CR>", { noremap = true })

-- OS Clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+yy', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+yy', { noremap = true })

-- PLUGins
-- LazyGit
vim.api.nvim_set_keymap("n", "<leader>lg", "<CMD>LazyGit<CR>", { noremap = true, silent = true })

-- NeoTree
vim.api.nvim_set_keymap("", "<leader>ft", "<CMD>Neotree toggle float<CR>", { noremap = true })

-- Yankstack
vim.api.nvim_set_keymap("n", "<C-M>", "<PLUG>yankstack_substitute_older_paste", {})
vim.api.nvim_set_keymap("n", "<C-N>", "<PLUG>yankstack_substitute_newer_paste", {})

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", "<CMD>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fs", "<CMD>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { noremap = true })

-- 99
vim.api.nvim_set_keymap("v", "<F1>", "<CMD>NNVisualPrompt<CR>", { noremap = true })

-- Lazy
vim.api.nvim_set_keymap("n", "<C-L>", "<CMD>Lazy<CR>", { noremap = true })

-- Cloak
vim.api.nvim_set_keymap("n", "<leader>cpl", "<CMD>CloakPreviewLine<CR>", { noremap = true })

-- LSP
vim.api.nvim_set_keymap("n", "<leader>gd", "<CMD>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gD", "<CMD>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>gi",
	"<CMD>lua vim.lsp.buf.implementation()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>gr", "<CMD>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>gt",
	"<CMD>lua vim.lsp.buf.type_definition()<CR>",
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<CMD>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })

-- Completely disable Enter in normal mode
vim.keymap.set("n", "<CR>", "<Nop>", { noremap = true, silent = true })
