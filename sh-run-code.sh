# make a copy of the relevant library
mkdir ~/lib
cp /usr/lib/x86_64-linux-gnu/libxcb.so.1 ~/lib
sed -i 's/BIG-REQUESTS/_IG-REQUESTS/' ~/lib/libxcb.so.1
# set the dynamic loader path to put your library first before executing VS Code

LD_LIBRARY_PATH=$HOME/lib code
