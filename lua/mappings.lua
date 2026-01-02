-- Tabs
vim.api.nvim_set_keymap("n", "<leader>t", ":tabnew<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>te", ":tabedit<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabclose<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabprevious<CR>", { noremap = true })

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
vim.api.nvim_set_keymap("n", "<leader>+", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>-", ":vertical resize -5<CR>", { noremap = true, silent = true })

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
vim.api.nvim_set_keymap("n", "<leader>sc", ":set spell!<CR>", { noremap = true })

-- Misc
-- Edit and load vimrc/gvimrc
vim.api.nvim_set_keymap("n", "<leader>ev", "<CMD>e $MYVIMRC<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>sv", ":luafile $MYVIMRC<CR>", { noremap = true, silent = true })

-- Wrap current paragraph
vim.api.nvim_set_keymap("", "<leader>w", "gqap", { noremap = true })

-- Toggles hlsearch
vim.api.nvim_set_keymap("n", "<leader>hs", ":set hlsearch!<CR>", { noremap = true })

-- Maps <C-C> to <esc>
vim.api.nvim_set_keymap("", "<C-C>", "<ESC>", { noremap = true })

-- Set current file executable
vim.api.nvim_set_keymap("n", "<leader>xx", ":!chmod +x %<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>XX", ":!chmod -x %<CR>", { noremap = true })

-- OS Clipboard
vim.api.nvim_set_keymap("n", "<leader>y", '"+yy', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>y", '"+yy', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>v", '"*p', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>V", '"*P', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>v", '"*p', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>V", '"*P', { noremap = true })

-- PLUGins
-- LazyGit
vim.api.nvim_set_keymap("n", "<leader>lg", ":LazyGit<CR>", { noremap = true, silent = true })

-- NERDTree
-- vim.api.nvim_set_keymap("", "<leader>ft", ":NERDTreeToggle<CR>", { noremap = true })

-- NeoTree
vim.api.nvim_set_keymap("", "<leader>ft", ":Neotree toggle float<CR>", { noremap = true })

-- Yankstack
vim.api.nvim_set_keymap("n", "<C-M>", "<PLUG>yankstack_substitute_older_paste", {})
vim.api.nvim_set_keymap("n", "<C-N>", "<PLUG>yankstack_substitute_newer_paste", {})

-- Telescope
vim.api.nvim_set_keymap("n", "<C-p>", "<CMD>Telescope find_files<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fs", "<CMD>Telescope live_grep<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<CMD>Telescope help_tags<CR>", { noremap = true })

-- LSP
vim.api.nvim_set_keymap("n", "<leader>gd", "<CMD>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gD", "<CMD>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gr", "<CMD>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ca", "<CMD>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>TD", "<CMD>lua vim.lsp.buf.type_definition()<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<CMD>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cf", "<CMD>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })

-- DAP & DAP UI
vim.api.nvim_set_keymap("n", "<leader>tb", "<CMD>lua require'dap'.toggle_breakpoint()<CR>",
  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dc", "<CMD>lua require'dap'.continue()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>td", "<CMD>lua require'dapui'.toggle()<CR>", { noremap = true, silent = true })

-- AI
vim.api.nvim_set_keymap("v", "<leader>vvc", ":NNVisualPrompt", { noremap = true, silent = true })

-- Completely disable Enter in normal mode
vim.keymap.set('n', '<CR>', '<Nop>', { noremap = true, silent = true })
