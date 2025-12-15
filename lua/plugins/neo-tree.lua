---@type lazy.types.LazyPluginBase
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "antosha417/nvim-lsp-file-operations",
    "MunifTanjim/nui.nvim",
    "ryanoasis/vim-devicons",
  },
  lazy = false,
  config = function()
    local neo_tree = require "neo-tree"

    neo_tree.setup {
      sources = { "filesystem", "document_symbols", },
      add_blank_line_at_top = false,
      auto_clean_after_session_restore = false,
      close_if_last_window = true,
      default_source = "filesystem",
      enable_diagnostics = true,
      enable_git_status = true,
      enable_modified_markers = true,
      enable_opened_markers = true,
      enable_refresh_on_write = true,
      git_status_async = true,
      hide_root_node = false,
      retain_hidden_root_indent = false,
      log_level = "info",
      log_to_file = false,
      open_files_in_last_window = true,
      open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
      popup_border_style = "NC",
      resize_timer_interval = 500,
      sort_case_insensitive = false,
      sort_function = nil,
      use_popups_for_input = true,
      use_default_mappings = true,
      source_selector = {
        winbar = true,
        statusline = true,
        show_scrolled_off_parent_node = false,
        sources = {
          { source = "filesystem" },
          { source = "document_symbols" },
        },
        content_layout = "start",
        tabs_layout = "equal",
        truncation_character = "…",
        tabs_min_width = nil,
        tabs_max_width = nil,
        padding = 0,
        -- padding = { left = 2, right = 0 },
        -- separator = "▕", -- can be string or table, see below
        separator = { left = "▏", right = "▕" },
        -- separator = { left = "/", right = "\\", override = nil },     -- |/  a  \/  b  \/  c  \...
        -- separator = { left = "/", right = "\\", override = "right" }, -- |/  a  \  b  \  c  \...
        -- separator = { left = "/", right = "\\", override = "left" },  -- |/  a  /  b  /  c  /...
        -- separator = { left = "/", right = "\\", override = "active" },-- |/  a  / b:active \  c  \...
        -- separator = "|",                                              -- ||  a  |  b  |  c  |...
        separator_active = nil, -- set separators around the active tab. nil falls back to `source_selector.separator`
        show_separator_on_edge = false,
        highlight_tab = "NeoTreeTabInactive",
        highlight_tab_active = "NeoTreeTabActive",
        highlight_background = "NeoTreeTabInactive",
        highlight_separator = "NeoTreeTabSeparatorInactive",
        highlight_separator_active = "NeoTreeTabSeparatorActive",
      },
      default_component_configs = {
        container = {
          enable_character_fade = true,
          width = "100%",
          right_padding = 0,
        },
        diagnostics = {
          symbols = {
            hint = "H",
            info = "I",
            warn = "!",
            error = "X",
          },
          highlights = {
            hint = "DiagnosticSignHint",
            info = "DiagnosticSignInfo",
            warn = "DiagnosticSignWarn",
            error = "DiagnosticSignError",
          },
        },
        indent = {
          indent_size = 2,
          padding = 1,
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          highlight = "NeoTreeIndentMarker",
          with_expanders = nil,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "ﰊ",
          folder_empty_open = "ﰊ",
          default = "*",
          highlight = "NeoTreeFileIcon"
        },
        modified = {
          symbol = "[+] ",
          highlight = "NeoTreeModified",
        },
        name = {
          trailing_slash = true,
          highlight_opened_files = false,
          use_git_status_colors = true,
          highlight = "NeoTreeFileName",
        },
        git_status = {
          symbols = {
            added     = "✚",
            deleted   = "✖",
            modified  = "",
            renamed   = "",
            untracked = "",
            ignored   = "",
            unstaged  = "",
            staged    = "",
            conflict  = "",
          },
          align = "right",
        },
      },
      renderers = {
        directory = {
          { "indent" },
          { "icon" },
          { "current_filter" },
          {
            "container",
            content = {
              { "name",        zindex = 10 },
              {
                "symlink_target",
                zindex = 10,
                highlight = "NeoTreeSymbolicLinkTarget",
              },
              { "clipboard",   zindex = 10 },
              { "diagnostics", errors_only = true, zindex = 20,     align = "right",          hide_when_expanded = true },
              { "git_status",  zindex = 20,        align = "right", hide_when_expanded = true },
            },
          },
        },
        file = {
          { "indent" },
          { "icon" },
          {
            "container",
            content = {
              {
                "name",
                zindex = 10
              },
              {
                "symlink_target",
                zindex = 10,
                highlight = "NeoTreeSymbolicLinkTarget",
              },
              { "clipboard",   zindex = 10 },
              { "bufnr",       zindex = 10 },
              { "modified",    zindex = 20, align = "right" },
              { "diagnostics", zindex = 20, align = "right" },
              { "git_status",  zindex = 20, align = "right" },
            },
          },
        },
        message = {
          { "indent", with_markers = false },
          { "name",   highlight = "NeoTreeMessage" },
        },
        terminal = {
          { "indent" },
          { "icon" },
          { "name" },
          { "bufnr" }
        }
      },
      nesting_rules = {},
      commands = {},
      window = {
        position = "left",
        width = 40,
        height = 15,
        auto_expand_width = true,
        popup = {
          relative = "editor",
          size = {
            height = "90%",
            width = "25%",
          },
          border = {
            style = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          },
          position = {
            row = "20%",
            col = "3%",
          },
        },
        same_level = false,
        insert_as = "child",
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ["<space>"] = { "toggle_node", nowait = false, },
          ["<cr>"] = "open",
          ["<esc>"] = "revert_preview",
          ["P"] = { "toggle_preview", config = { use_float = true } },
          ["l"] = "focus_preview",
          ["S"] = "open_split",
          ["s"] = "open_vsplit",
          ["t"] = "open_tabnew",
          ["x"] = "close_node",
          ["X"] = "close_all_nodes",
          ["R"] = "refresh",
          ["r"] = "rename",
          ["e"] = "toggle_auto_expand_width",
          ["q"] = "close_window",
          ["?"] = "show_help",
          ["<"] = "prev_source",
          [">"] = "next_source",
        },
      },
      filesystem = {
        window = {
          mappings = {
            ["I"] = "toggle_hidden",
            ["C"] = "set_root",
          },
        },
        async_directory_scan = "always",
        scan_mode = "deep",
        bind_to_cwd = false,
        cwd_target = {
          sidebar = "tab",
          current = "window"
        },
        filtered_items = {
          visible = false,
          force_visible_in_empty_folder = false,
          show_hidden_count = true,
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true,
          hide_by_name = {
            ".DS_Store",
            "thumbs.db"
            --"node_modules",
          },
          hide_by_pattern = {
            --"*.meta",
            --"*/src/*/tsconfig.json"
          },
          always_show = {
            --".gitignored",
          },
          never_show = {
            --".DS_Store",
            --"thumbs.db"
          },
          never_show_by_pattern = {
            --".null-ls_*",
          },
        },
        find_by_full_path_words = false,
        group_empty_dirs = false,
        search_limit = 50,
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_default",
        use_libuv_file_watcher = true,
      },
      document_symbols = {
        follow_cursor = false,
        client_filters = "first",
        renderers = {
          root = {
            { "indent" },
            { "icon",  default = "C" },
            { "name",  zindex = 10 },
          },
          symbol = {
            { "indent",    with_expanders = true },
            { "kind_icon", default = "?" },
            {
              "container",
              content = {
                { "name",      zindex = 10 },
                { "kind_name", zindex = 20, align = "right" },
              }
            }
          },
        },
        window = {
          mappings = {
            ["<cr>"] = "jump_to_symbol",
            ["o"] = "jump_to_symbol",
            ["A"] = "noop",
            ["d"] = "noop",
            ["y"] = "noop",
            ["x"] = "noop",
            ["p"] = "noop",
            ["c"] = "noop",
            ["m"] = "noop",
            ["a"] = "noop",
            ["/"] = "filter",
            ["f"] = "filter_on_submit",
          },
        },
        custom_kinds = {
          [252] = 'TypeAlias',
          [253] = 'Parameter',
          [254] = 'StaticMethod',
          [255] = 'Macro',
        },
        kinds = {
          Unknown = { icon = "?", hl = "" },
          Root = { icon = "", hl = "NeoTreeRootName" },
          File = { icon = "", hl = "Tag" },
          Module = { icon = "", hl = "Exception" },
          Namespace = { icon = "", hl = "Include" },
          Package = { icon = "", hl = "Label" },
          Class = { icon = "", hl = "Include" },
          Method = { icon = "", hl = "Function" },
          Property = { icon = "", hl = "@property" },
          Field = { icon = "", hl = "@field" },
          Constructor = { icon = "", hl = "@constructor" },
          Enum = { icon = "了", hl = "@number" },
          Interface = { icon = "", hl = "Type" },
          Function = { icon = "", hl = "Function" },
          Variable = { icon = "", hl = "@variable" },
          Constant = { icon = "", hl = "Constant" },
          String = { icon = "", hl = "String" },
          Number = { icon = "", hl = "Number" },
          Boolean = { icon = "", hl = "Boolean" },
          Array = { icon = "", hl = "Type" },
          Object = { icon = "", hl = "Type" },
          Key = { icon = "", hl = "" },
          Null = { icon = "", hl = "Constant" },
          EnumMember = { icon = "", hl = "Number" },
          Struct = { icon = "", hl = "Type" },
          Event = { icon = "", hl = "Constant" },
          Operator = { icon = "", hl = "Operator" },
          TypeParameter = { icon = "", hl = "Type" },
          TypeAlias = { icon = ' ', hl = 'Type' },
          Parameter = { icon = ' ', hl = '@parameter' },
          StaticMethod = { icon = 'ﴂ ', hl = 'Function' },
          Macro = { icon = ' ', hl = 'Macro' },
        }
      },
    }
  end,
}
