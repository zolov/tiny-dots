set -euo pipefail
echo "For debugging, run with bash -x script.sh"
echo "If anything went wrong. Run the following command in your build directory:"
echo "rm -rf build .deps # the command 'make distclean' performs the same"

if [ -f "/usr/bin/nvim" ]; then
    echo "Nvim already installed. Remove it first: sudo apt remove neovim"
	exit 1;
fi

if [ -z "$NEOVIM_LOCATION" ]; then
	echo "Please set NEOVIM_LOCATION (eg /usr/bin or /usr/local/bin)to the location where you want to install neovim"
	exit 1;
fi

echo "Installing dependecies for build from source"
sudo apt-get install ninja-build \
     gettext libtool libtool-bin \
     autoconf automake cmake g++ \
     pkg-config unzip -y


echo "Creating build directory"
mkdir -p ~/build && cd ~/build || exit 1
pwd

echo "Cloning neovim repository"
git clone https://github.com/neovim/neovim.git

cd ./neovim || exit 1

echo "Checking out stable branch"
git checkout stable

echo "Building neovim..."
make CMAKE_BUILD_TYPE=Release \
     CMAKE_INSTALL_PREFIX="$NEOVIM_LOCATION" install || exit 1;

echo "Adding neovim to PATH"
export PATH="$NEOVIM_LOCATION:$PATH"

echo "Make sure that everything is in order by typing :checkhealth inside nvim"
