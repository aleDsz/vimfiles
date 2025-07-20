-- Tailwind
require("lspconfig").tailwindcss.setup {
  cmd = { "npx", "tailwindcss-language-server", "--stdio" },
	settings = {
		tailwindCSS = {
      validate = true,
      includeLanguages = {
        heex = "html-eex",
        eruby = "erb",
        templ = "html",
        htmlangular = "html",
      },
			experimental = {
        configFile = { 
          ["assets/tailwind.config.js"] = "/**/assets/tailwind.config.js" 
        },
				classRegex = {
					'class[:]\\s*"([^"]*)"',
				},
			},
		},
	},
}
