# git
ok brew # Ensure homebrew is installed
ok brew git
ok brew hub
ok brew tig
ok brew rbenv
ok brew tmux
ok brew reattach-to-user-namespace
ok brew ruby-build
ok brew zsh
ok brew vim

ok directory $HOME/
ok directory $HOME/.vim
ok directory $HOME/.vim/bundle
ok directory $HOME/.vim/autoload

destination $HOME/.vim/autoload
# update the pathogen file in autoload manually
# from tpope/vim-pathogen

destination $HOME/.vim/bundle
ok github tpope/vim-surround
ok github tpope/vim-bundler
ok github kien/ctrlp.vim
ok github scrooloose/syntastic
ok github skammer/vim-css-color
ok github Raimondi/delimitMate
ok github majutsushi/tagbar
ok github tomtom/tlib_vim
ok github MarcWeber/vim-addon-mw-utils
