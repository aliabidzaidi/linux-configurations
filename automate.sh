sudo apt update
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install -y anydesk

sleep(1)

#  Install tmux 
sudo apt install -y git
sudo apt install -y powerline
sudo apt install -y tmux
sudo apt install -y vim


# Powerline configuration
echo "
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then 
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi
alias tmux=\"TERM=screen-256color-bce tmux\"" >> ~/.bashrc
source ~/.bashrc


echo "
set -g default-terminal \"screen-256color\"
if-shell 'env \"$POWERLINE_CONFIG_COMMAND\" tmux setup' '' 'run-shell \"powerline-config tmux setup\"'
set -g default-terminal \"screen-256color\"
" >> ~/.tmux.conf

tmux source ~/.tmux.conf



echo "
set term=xterm-256color

call plug#begin()

\" Vim Airline
Plug 'vim-airline/vim-airline'

\" Nerdtree
Plug 'scrooloose/nerdtree'

\" Syntax
Plug 'scrooloose/syntastic'

\" Autocomplete
\"Plug 'valloric/youcompleteme'

\"Vim Colorschremes
Plug 'flazz/vim-colorschemes'

call plug#end()

set tabstop=2
set shiftwidth=2
set mouse=a
set number
set cursorline
set encoding=utf-8


syntax enable
set background=dark
let g:solarized_termcolors=256
set t_Co=256
colorscheme mustang

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" >> ~/.vimrc

# TODO: Replace with automated vimplug and vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# Requires opening vim and type :PlugInstall
