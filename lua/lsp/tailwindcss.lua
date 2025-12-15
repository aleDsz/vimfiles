---@type vim.lsp.Config
return {
  cmd = { "tailwindcss-language-server", "--stdio" },
  root_markers = { "tailwind.config.js", "tailwind.config.ts", "mix.exs" },
  settings = {
    tailwindCSS = {
      validate = true,
      includeLanguages = {
        heex = "html-eex",
        eruby = "erb",
        templ = "html",
        htmlangular = "html",
        elixir = "html",
        eelixir = "html",
      },
      experimental = {
        classRegex = {
          'class[:]\\s*"([^"]*)"',
        },
      },
    },
  },
}
