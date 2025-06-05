require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- General Stuff

map("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle Zen Mode" })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Action' })

-- Break paragraphs and unbreak paragraphs

-- map('n', "gqap", "this is just a reminder",
--   { desc = "Breaks a line in many smaller lines" }
-- )
--
-- map('n', "J", "this is just a reminder",
--   { desc = "Rejoins selected broke lines" }
-- )

-- Debugging
map('n', '<leader>db', function()
  require 'dap'.toggle_breakpoint()
end, { desc = 'DAP - Toggle Breakpoint' })

map('n', '<leader>dc', function()
  require 'dap'.continue()
end, { desc = 'DAP - Start/Pause' })

map('n', '<leader>do', function()
  require 'dap'.step_over()
end, { desc = 'DAP - Step Over' })

map('n', '<leader>di', function()
  require 'dap'.step_into()
end, { desc = 'DAP - Step Into' })

map('n', '<leader>dh', function()
  require('dap.ui.widgets').hover()
end, { desc = "DAP - Hover" })

-- Default

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
