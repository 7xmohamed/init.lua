return {
  -- Plugin de base utilisé par beaucoup d'autres
  { "nvim-lua/plenary.nvim", name = "plenary" },

  -- Explorateur de fichiers style VSCode
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  -- Telescope pour la recherche fuzzy
  "nvim-telescope/telescope.nvim",

  -- Treesitter pour la coloration et la structure syntaxique
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Fugitive pour Git
  "tpope/vim-fugitive",

  -- Zen mode pour focus
  "folke/zen-mode.nvim",

  -- Animations fun
  "eandrju/cellular-automaton.nvim",
}

