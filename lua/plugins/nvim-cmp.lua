---@type lazy.types.LazyPluginBase
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "onsails/lspkind-nvim",
    },
    opts = function(_, opts)
      opts.sources = opts.sources or {}

      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0,
      })
    end,
    config = function()
      local cmp = require "cmp"

      cmp.setup {
        snippet = {
      		expand = function(args)
      			vim.fn["vsnip#anonymous"](args.body)
      		end,
      	},
      	window = {
      		completion = cmp.config.window.bordered(),
      		documentation = cmp.config.window.bordered(),
      	},
      	mapping = cmp.mapping.preset.insert({
      		["<C-b>"] = cmp.mapping.scroll_docs(-4),
      		["<C-f>"] = cmp.mapping.scroll_docs(4),
      		["<C-Space>"] = cmp.mapping.complete(),
      		["<C-e>"] = cmp.mapping.abort(),
      		["<CR>"] = cmp.mapping.confirm({ select = true }),
      	}),
      	sources = cmp.config.sources({
      		{ name = "buffer" },
      		{ name = "emoji", options = { insert = true } },
      		{ name = "nvim_lsp" },
      		{ name = "nvim_lsp_document_symbol" },
      		{ name = "nvim_lsp_signature_help" },
      		{ name = "nvim_lua" },
      		{ name = "vsnip" },
      	}),
      }

      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ "/", "?" }, {
      	mapping = cmp.mapping.preset.cmdline(),
      	sources = {
      		{ name = "buffer" },
      	},
      })
      
      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(":", {
      	mapping = cmp.mapping.preset.cmdline(),
      	sources = cmp.config.sources({
      		{ name = "path", option = { trailing_slash = true } },
      	}, {
      		{ name = "cmdline" },
      	}),
      })
    end,
  },
}
