---@type lazy.types.LazyPluginBase
return {
   "kdheepak/lazygit.nvim",
   lazy = true,
   cmd = {
     "LazyGit",
     "LazyGitConfig",
     "LazyGitCurrentFile",
     "LazyGitFilter",
     "LazyGitFilterCurrentFile",
   },
   -- setting the keybinding for LazyGit with 'keys' is recommended in
   -- order to load the plugin when the command is run for the first time
   keys = {
     { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
   }
}
