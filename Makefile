all:
	@gcc -Ofast -s -Wall -Wextra turtlemu.c liblua5.3.so -ldl -o turtlemu
test: all
	@LD_LIBRARY_PATH=. ./turtlemu stripmine.lua
clean:
	@rm -f turtlemu
setup:
	@apt install liblua5.3-dev gcc
