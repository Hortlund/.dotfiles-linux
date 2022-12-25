local Remap = require("hortlund.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

--Stolen shamelessly from ThePrimeagen
nnoremap("<leader>pv", vim.cmd.Ex)
--Moves slected lines up and down
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

vnoremap("<leader>d", "\"_d")

-- This is going to get me cancelled
inoremap("<C-c>", "<Esc>")

nnoremap("<C-k>", "<cmd>cnext<CR>zz")
nnoremap("<C-j>", "<cmd>cprev<CR>zz")
nnoremap("<leader>k", "<cmd>lnext<CR>zz")
nnoremap("<leader>j", "<cmd>lprev<CR>zz")

inoremap("<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
inoremap("<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })
vnoremap("<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>", { noremap = true, silent = true })
vnoremap("<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>", { noremap = true, silent = true })

--map("n", "<C-p>", "<cmd>Telescope find_files<CR>")
nmap("<C-f>", "<cmd>Telescope live_grep<CR>")
--nmap("<Leader>f", "<cmd>Telescope grep_string<CR>")
nmap("<Leader>s", ":<C-u>call gitblame#echo()<CR>")
nmap("<Leader>b", ":! perl $HOME/Documents/git/air8/_VERKTYG/publish.pm %:p 1<CR>")
nmap("<Leader>n", ":! perl $HOME/Documents/git/air8/_VERKTYG/publish.pm %:p<CR>")

