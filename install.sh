#!/bin/bash

SCRIPT_NAME="dsym"
SCRIPT_FILE="dsym.py"
INSTALL_DIR="/usr/local/bin"


if [ ! -f "$SCRIPT_FILE" ]; then
    echo ":: Error: $SCRIPT_FILE does not exist"
    exit 1
fi

echo ":: Install: $SCRIPT_NAME global to $INSTALL_DIR ..."
sudo cp "$SCRIPT_FILE" "$INSTALL_DIR/$SCRIPT_NAME"
sudo chmod +x "$INSTALL_DIR/$SCRIPT_NAME"

if [ $? -eq 0 ]; then
    echo ":: Installation complete! Use '$SCRIPT_NAME' to manage your dotfiles."
    echo ":: Exp.:  dsym -init"
else
    echo ":: something went wrong. check privileges"
fi
