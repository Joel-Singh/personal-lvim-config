lvim.builtin.which_key.mappings["t"] = {
  name = "Telescope",
  c = {"<cmd>Telescope command_history<cr>", "Command History"},
  b = {"<cmd>Telescope buffers<cr>", "Buffers"},
  o = {"<cmd>Telescope oldfiles<cr>", "Old Files"},
}

vim.o.timeoutlen = 0
vim.o.relativenumber = true
lvim.keys.normal_mode["<S-h>"] = "<cmd>bprevious<cr>"
lvim.keys.normal_mode["<S-l>"] = "<cmd>bnext<cr>"
lvim.keys.normal_mode["<S-q>"] = "<cmd>BufferKill<cr>"
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
