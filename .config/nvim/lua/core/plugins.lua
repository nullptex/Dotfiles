local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'shaunsingh/nord.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'jiangmiao/auto-pairs'
  use {'junegunn/fzf', run = ":call fzf#install()"}
  use 'junegunn/fzf.vim' 
  use {'neoclide/coc.nvim', branch = 'release'}
  use ({
    'MeanderingProgrammer/render-markdown.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  })
  use 'lervag/vimtex'
  use 'folke/zen-mode.nvim'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
