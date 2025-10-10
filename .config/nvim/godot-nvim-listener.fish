#!/bin/fish

# Define the socket path
set SOCKET_PATH /tmp/godothost

# Check if a file path argument is provided
if test (count $argv) -eq 0
    echo "Usage: ./check_nvim_server.fish <file_path>"
    exit 1
end

# Get the file path from the first argument
set FILE_PATH $argv[1]

# Check if the socket exists
if not test -S $SOCKET_PATH
    # If the socket does not exist, open a new terminal and start nvim with the file
    alacritty -e nvim --listen $SOCKET_PATH $FILE_PATH
else
    echo "Neovim server is already running. Opening the file in the existing instance."
    nvim --server $SOCKET_PATH --remote-send ":w<CR><C-\><C-N>:n $FILE_PATH <CR>"
end
