local g = vim.g

-- Ignore for indent levels
g.indent_blankline_filetype_exclude = {
  "help",
  "packer",
  "dashboard",
  "nvim-tree",
}

-- Ignore for indent levels
g.indent_blankline_buftype_exclude = { "terminal", "nofile" }

g.rose_pine_variant = 'moon'
g.rose_pine_enable_italics = true

-- Transparent background
g.tokyonight_transparent = false
g.mapleader = " "

g.solarized_termcolors = 256

-- extra plugins to install (must only be strings)
g.kyoto_extra_plugins = {}

g.nvim_tree_side = "right"
g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
g.nvim_tree_gitignore = 1
g.nvim_tree_auto_ignore_ft = { "dashboard" } -- don't open tree on specific fiypes.
g.nvim_tree_auto_open = 0
g.nvim_tree_auto_close = 0 -- closes tree when it's the last window
g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
g.nvim_tree_follow = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 0
g.nvim_tree_git_hl = 1
g.nvim_tree_highlight_opened_files = 1
g.nvim_tree_root_folder_modifier = table.concat({
  ":t:gs?$?/..",
  string.rep(" ", 1000),
  "?:gs?^??",
})
g.nvim_tree_tab_open = 0
g.nvim_tree_allow_resize = 1
g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_disable_netrw = 1
g.nvim_tree_hijack_netrw = 0
g.nvim_tree_update_cwd = 1

g.mkdp_browser = 'firefox'
-- Configs for LSPs
g.lsp_config = {
  lua = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { "vim" },
        },
      },
    },
  },
}

-- COQ-nvim completion config
g.coq_settings = {
  auto_start = "shut-up",
  keymap = {
    jump_to_mark = "<c-q>",
  },
}

-- UI CONFIGS
g.kyotorc_ui = {
  -- find a list of themes at https://github.com/NvChad/nvim-base16.lua/tree/master/lua/themes
  theme = "nord",
  -- Find a list of options at lua/statusline.lua(icon_styles var)
  statusline_style = "arrow",
  -- transparent = true,
}

-- uncomment this out if you are experiencing issues with nvim-tree.lua
-- g.nvim_tree_git_hl = 0
-- g.nvim_tree_gitignore = 0
-- g.nvim_tree_show_icons = {
--   git = 0,
--   folders = 1,
--   files = 1
-- }
