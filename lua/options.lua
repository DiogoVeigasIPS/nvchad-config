require "nvchad.options"

-- add yours here!
local opt = vim.opt

opt.relativenumber = true
opt.numberwidth = 8
opt.signcolumn = "yes:2"

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Show NvDashboard when no buffers are open
-- vim.api.nvim_create_autocmd("BufDelete", {
--   callback = function()
--     local bufs = vim.t.bufs
--     if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
--       vim.cmd "Nvdash"
--     end
--   end,
-- })
