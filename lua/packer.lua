-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed


-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved


-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end


return packer.startup(function(use)
    use('https://github.com/vim-airline/vim-airline')
    use('vim-airline/vim-airline-themes')
    use('catppuccin/nvim', { 'as': 'catppuccin' })
    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim', { 'tag': '0.1.0' })
    use('nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' })
    use('neovim/nvim-lspconfig')
    use('windwp/nvim-autopairs')
end)
