vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- 🔁 Raccourcis inspirés de VSCode (AZERTY-friendly)
keymap.set({ "n", "v" }, "<C-y>", '"+y')         -- Copier (comme Ctrl+C)
keymap.set({ "n", "v" }, "<C-x>", '"+d')         -- Couper
keymap.set({ "n", "v" }, "<C-v>", '"+p')         -- Coller
keymap.set("i", "<C-v>", '<C-r>+')               -- Coller en mode insert

-- 🖱️ Tout sélectionner sans toucher au terminal
keymap.set("n", "<C-a>", "ggVG")                 -- Tout sélectionner
keymap.set("i", "<C-a>", "<Esc>ggVG")            -- En mode insert

-- 🗂️ Explorer les fichiers (mode Ex)
keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })


-- 🔁 Remonter/descendre des lignes sélectionnées
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 📜 Scrolling centré
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- ✅ Formater avec conform.nvim
keymap.set("n", "<leader>f", function()
    require("conform").format({ bufnr = 0 })
end)

-- 🔃 Redémarrer LSP
keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- 📋 Yank simplifié (système ou noir)
keymap.set("x", "<leader>p", [["_dP]])
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- 🔄 Remplacer mot sous curseur dans tout le fichier
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- ⛏️ Rendre fichier exécutable
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- 🔥 Animation Cellular Automaton
keymap.set("n", "<leader>ca", function()
    require("cellular-automaton").start_animation("make_it_rain")
end)

-- 🔁 Sourcing rapide
keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- ❌ Fermer Q (mode Ex)
keymap.set("n", "Q", "<nop>")

-- 🧪 Tests
keymap.set("n", "<leader>tf", "<Plug>PlenaryTestFile", { noremap = false, silent = false })

-- 📄 Gestion erreurs / quickfix
keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- 🔍 Recherche fichiers comme VSCode (Telescope)
keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Telescope: Rechercher fichier" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope: Grep dans projet" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope: Fichiers ouverts" })

-- 🧭 Naviguer entre buffers (fichiers ouverts)
keymap.set("n", "<TAB>", ":bnext<CR>")
keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- 👥 Vim With Me
keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- 📁 Ouvrir / fermer l'explorateur de fichiers
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })


