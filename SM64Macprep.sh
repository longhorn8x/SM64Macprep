echo "installing brew"



/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "downloading dependinces"

brew install git python3 mingw-w64 gcc make pkg-config glfw glew sdl2 libusb

read -p "Please insert Super Mario 64 In Folder, rename it to Baserom.us.z64 And Hit Enter " -n1 -s

./extract_assets.py us

gmake -j4

echo "DONE"
