#!/bin/bash
# Tree-sitter client is needed by nvim-treesitter
if [ ! -f /usr/local/bin/tree-sitter ]
then
    wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.26.8/tree-sitter-cli-linux-x64.zip
    unzip tree-sitter-cli-linux-x64.zip
    sudo mv tree-sitter /usr/local/bin/tree-sitter
    sudo chmod +x /usr/local/bin/tree-sitter
    rm tree-sitter-cli-linux-x64.zip
fi

# Set the locale to en_US.utf8 that is the one the docker image has installed.
# If not bash tries to use the locale of the host (en_GB.utf8 in my case)
echo '\n\nexport LANG=en_US.utf8' >> $HOME/.profile
echo -e '\nexport LC_ALL=en_US.utf8' >> $HOME/.profile

# ripgrep is used by neovim telescope
sudo apt-get update && sudo apt-get install ripgrep
