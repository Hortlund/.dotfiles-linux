require("hortlund.set")
require("hortlund.packer")

vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

vim.api.nvim_command('autocmd BufRead,BufNewFile $HOME/Documents/git/air8/* setlocal fileencodings=iso-8859-1')
vim.api.nvim_command('au BufNewFile,BufRead *.tt set filetype=tt2html')

--Get store
store = os.getenv("ASKAS_BUTIK")

-- lualine
require('lualine').setup{
  sections = {
    lualine_c = {{'filename', file_status = true, path = 2}},
	lualine_x = {"store",'encoding', 'fileformat', 'filetype'}
  }
}

