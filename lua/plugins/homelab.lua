return {
  -- seamless pane navigation between tmux and nvim (essential for SSH work)
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft", "TmuxNavigateDown",
      "TmuxNavigateUp", "TmuxNavigateRight",
    },
    keys = {
      { "<C-Left>",  "<cmd>TmuxNavigateLeft<cr>" },
      { "<C-Down>",  "<cmd>TmuxNavigateDown<cr>" },
      { "<C-Up>",    "<cmd>TmuxNavigateUp<cr>" },
      { "<C-Right>", "<cmd>TmuxNavigateRight<cr>" },
    },
  },

  -- edit filesystem like a buffer — great for navigating server dirs over SSH
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent dir in Oil" },
    },
    opts = {
      delete_to_trash = false,
      skip_confirm_for_simple_edits = true,
    },
  },

  -- lazydocker TUI inside nvim (mirrors lazygit experience for containers)
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    keys = {
      { "<leader>ld", "<cmd>Lazydocker<cr>", desc = "LazyDocker" },
    },
    opts = {},
  },
}
