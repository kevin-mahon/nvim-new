--All remaps editor here -- 
vim.g.mapleader = " " -- space is <leader>
-- file explorer, use all the time
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)

-- move entire lines up and down, respecting indents
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- rarely use this for better scrolling
vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")

--nice to spam this one, use Q as default macro register qq
vim.keymap.set("n", "`", "@q")

--Copy paste keymaps because the default ones are trash
-- delete overwrites the register??
-- no thanks
vim.keymap.set("n", "<leader>p", "\"kp")
vim.keymap.set("n", "<leader>y", "\"kyy")
vim.keymap.set("n", "<leader>Y", "\"kYY")
vim.keymap.set("v", "<leader>y", "\"kyy")

-- Capital Q wasteland 
vim.keymap.set("n", "Q", "<nop>")

-- this one will find and edit all occurances of the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- fix leap motions
require('leap').create_default_mappings()

--bring me back to packer so I can install a useless plugin 
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/default/packer.lua<CR>")

--nice for terminals in vim that ssh into other servers and then use vim on them
vim.keymap.set("i", "jj", "<esc>")

--this one is for when I'm in a terminal and I want to get out of insert mode
-- why it would be ctrl+\ and ctrl+n I don't understand
vim.keymap.set("t", "<esc>", "<C-\\><C-n>")

-- convenience for when I don't want to use harpoon or need to edit a lot of files
vim.keymap.set("n", "<M-j>", ":BufferPrevious<CR>")
vim.keymap.set("n", "<M-k>", ":BufferNext<CR>")
vim.keymap.set("n", "<M-x>", ":BufferClose<CR>")

--v mode - gc for comment group
--n mode - gcc for comment line


