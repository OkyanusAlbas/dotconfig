-- Basic Neovim settings
vim.o.number = true          -- Show line numbers
vim.o.relativenumber = true  -- Relative numbers
vim.o.tabstop = 4            -- Tab = 4 spaces
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.ignorecase = true      -- Case insensitive search…
vim.o.smartcase = true       -- …unless uppercase used
vim.o.hlsearch = true        -- Highlight search
vim.o.incsearch = true

vim.o.termguicolors = true   -- Better colors
vim.cmd("syntax on")

-- Keymaps
vim.g.mapleader = " "        -- Space as leader key
vim.keymap.set("n", "<leader>w", ":w<CR>")   -- Save with Space+w
vim.keymap.set("n", "<leader>q", ":q<CR>")   -- Quit with Space+q

-- Compile & run C++ with F5
vim.api.nvim_set_keymap("n", "<F5>",
  ":w<CR>:!g++ % -o %< && ./%<<CR>",
  { noremap = true, silent = true })

