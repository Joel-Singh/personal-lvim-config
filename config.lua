lvim.builtin.which_key.mappings["t"] = {
  name = "Telescope",
  c = {"<cmd>Telescope command_history<cr>", "Command History"},
  b = {"<cmd>Telescope buffers<cr>", "Buffers"},
  o = {"<cmd>Telescope oldfiles<cr>", "Old Files"},
  k = {"<cmd>Telescope current_buffer_fuzzy_find<cr>", "Kurrent Buffer"},
}

lvim.builtin.which_key.mappings[""] = {
  r = {"<cmd>lua RunCurrentFile()<cr>", "run"},
}

vim.o.timeoutlen = 0
vim.o.relativenumber = true
vim.o.linebreak = true
vim.o.spell = true

lvim.keys.normal_mode["<S-h>"] = "<cmd>bprevious<cr>"
lvim.keys.normal_mode["<S-l>"] = "<cmd>bnext<cr>"
lvim.keys.normal_mode["<S-q>"] = "<cmd>BufferKill<cr>"

lvim.autocommands = {
    {
        "BufEnter", -- see `:h autocmd-events`
        { -- this table is passed verbatim as `opts` to `nvim_create_autocmd`
            pattern = { "*.tex", "*.md" }, -- see `:h autocmd-events`
            command = "setlocal wrap",
        }
    },
}

function RunCurrentFile()
  if (vim.bo.filetype == "tex") then
    vim.cmd("!"..vim.fn.expand("%:p:h").."/".."compile.sh")
  end

  if (vim.bo.filetype == "python") then
    vim.cmd("!python "..vim.fn.expand("%:P"))
  end

  if (vim.bo.filetype == "rust") then
    vim.cmd("!cargo run")
  end
end

-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
