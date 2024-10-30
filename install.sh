#!/bin/bash

# Script to install toggle-kitty

# Set variables
BINDIR="/usr/local/bin"
MANDIR="/usr/share/man/man1"
TOGGLE_KITTY_SRC="./bin/toggle-kitty"
TOGGLE_KITTY_MAN_SRC="./share/man/man1/toggle-kitty.1"

# Function to check if a command exists
command_exists() {
	command -v "$1" >/dev/null 2>&1
}

# Install xdotool if not already installed
if ! command_exists xdotool; then
	echo "xdotool is not installed. Installing..."
	sudo apt install -y xdotool
else
	echo "xdotool is already installed."
fi

# Copy the toggle-kitty script to the bin directory
if [ -f "$TOGGLE_KITTY_SRC" ]; then
	echo "Installing toggle-kitty to $BINDIR..."
	sudo cp "$TOGGLE_KITTY_SRC" "$BINDIR/toggle-kitty"
	sudo chmod +x "$BINDIR/toggle-kitty"
	echo "toggle-kitty installed successfully."
else
	echo "Error: toggle-kitty script not found at $TOGGLE_KITTY_SRC."
	exit 1
fi

# Copy the man page to the man directory
if [ -f "$TOGGLE_KITTY_MAN_SRC" ]; then
	echo "Installing man page to $MANDIR..."
	sudo cp "$TOGGLE_KITTY_MAN_SRC" "$MANDIR/"
	echo "Man page installed successfully."
else
	echo "Error: Man page not found at $TOGGLE_KITTY_MAN_SRC."
	exit 1
fi

# Update man database
sudo mandb

echo "Installation complete. You can now use 'toggle-kitty' from the command line."
