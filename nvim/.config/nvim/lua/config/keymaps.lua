-- Misc keymaps
vim.keymap.set("n", "<leader>h", ":noh<CR>")

-- Navigate between active split
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<CR>", { silent = true })
vim.keymap.set("n", "<c-j>", "<cmd:wincmd j<CR>", { silent = true })
vim.keymap.set("n", "<c-h>", "<cmd:wincmd h<CR>", { silent = true })
vim.keymap.set("n", "<c-l>", "<cmd:wincmd l<CR>", { silent = true })

-- Vertical navigation
vim.keymap.set("n", "<c-d>", "<c-d>zz", { silent = true })
vim.keymap.set("n", "<c-u>", "<c-u>zz", { silent = true })

-- Move to next or previous tab
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<CR>", { silent = true })
vim.keymap.set("n", "<S-Tab>", "<cmd>tabprevious<CR>", { silent = true })
