#!bin/zsh

# install xcode if not installed
xcode-select --install
# accept license
sudo xcodebuild -license accept

# install homebrew if not installed
if ! command -v brew &> /dev/null
then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# link Brewfile to $HOME/Brewfile if not already linked
if [ ! -f $HOME/Brewfile ]; then
    ln -s $HOME/Brewfile $HOME/Brewfile
fi

brew bundle install

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# stow tools
stow zsh tmux neovim mise

source $HOME/.zshrc

# install programming languages from the mise config file in ~/.config/mise/config.yaml
mise install

# install rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# install cht.sh
PATH_DIR="$HOME/bin"  # or another directory on your $PATH
mkdir -p "$PATH_DIR"
curl https://cht.sh/:cht.sh > "$PATH_DIR/cht.sh"
chmod +x "$PATH_DIR/cht.sh"

echo "1. install docker desktop:"
echo "https://docs.docker.com/desktop/install"
echo ""
echo "2. set github ssh key:"
echo "https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent"
echo ""
echo "3. setup aws and gcloud if needed"
echo "aws sso login"
echo "gcloud auth login"
