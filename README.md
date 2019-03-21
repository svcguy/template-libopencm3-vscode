# template-libopencm3-vscode
A template based on the one provided by libopencm3, customized for VSCode

# Requirements
ARM GNU Toolchain
VSCode
WSL (I use Ubuntu)

# How-to
git clone https://github.com/svcguy/template-libopencm3-vscode my-cool-project-folder
cd my-cool-project-folder
git submodule init
git submodule update
-then edit the files necessary to match your environment (see below)
cd libopencm3
make (I run this from the WSL using a terminal from within VSCode)
cd ..
make -C src (or use the build command from VSCode to build your project)

# Things you'll need to edit to use
.vscode/c_cpp_properties.json - change the variables under "env" to match your enviornment (line 3-5)
.vscode/launch.json - change line 11 and 40 with the .elf file name, line 19 with the gdb path, and line 25 with the BMP com port
flash.gdb - line 2 set your com port, line 3 file .elf name
src/Makefile - lines 4,5 and 8,9 to match your files and device and OpenOCD (if used)