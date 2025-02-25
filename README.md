# toggle-kitty

**toggle-kitty** is a lightweight script that lets you toggle the visibility of the Kitty terminal emulator, making it behave like a dropdown terminal (similar to Tilda or Yakuake).

This script checks if the Kitty terminal is running, then either minimizes or activates its window depending on the current state, providing easy access to your terminal with a single command.

## Features

-   Quickly show or hide the Kitty terminal.
-   Mimics dropdown terminal behavior without requiring additional software.

## Important Note

Currently, **toggle-kitty** does not function as intended under the Wayland display server due to `xdotool`'s limited compatibility with Wayland. To use this script smoothly, log in using an **X11 session** instead of Wayland.

## Requirements

-   **xdotool**: Ensure `xdotool` is installed, as it’s used to detect and manage window states.

    Install `xdotool` with:

    ```bash
    sudo apt install -y xdotool
    ```

## Installation

You can install **toggle-kitty** in one of the following ways:

### Option 1: Install via `.deb` Package (Recommended)

Download the `.deb` package from the [releases page](https://github.com/caesar003/toggle-kitty/releases).

After downloading, install it using:

```bash
sudo apt install ./toggle-kitty.deb
```

### Option 2: Manual Installation

1. Clone this repository:

    ```bash
    git clone https://github.com/yourusername/toggle-kitty.git
    cd toggle-kitty
    ```

2. Run the installation script:
    ```bash
    ./install.sh
    ```

3. Alternatively, you can manually copy the script:
    ```bash
    mkdir -p ~/.bin
    cp bin/toggle-kitty ~/.bin/
    chmod +x ~/.bin/toggle-kitty
    ```
    Ensure `~/.bin` is in your `PATH` for global access.

## Usage

Simply run the command:

```bash
toggle-kitty
```

### Behavior

-   **If Kitty is running and active**: The script will minimize the Kitty window.
-   **If Kitty is running but inactive**: The script will bring the Kitty window to the foreground.

This allows quick toggling of the Kitty terminal without needing to navigate manually.

## Keybinding Customization (Recommended)

To integrate `toggle-kitty` into your workflow, you can assign a keybinding. Below are steps for Debian/Ubuntu:

1. Open **Settings** → **Keyboard Shortcuts**.
2. Add a new shortcut:
   - Name: `Toggle Kitty`
   - Command: `toggle-kitty`
   - Shortcut: `Ctrl + F8` (or any preferred combination)
3. Save and apply the shortcut.

For other desktop environments, look for the **Keyboard Shortcuts** settings.

## Troubleshooting

-   **Kitty Not Found**: Ensure Kitty is running and installed on your system.
-   **xdotool Command Not Found**: Verify that `xdotool` is installed.
-   **Not Working in Wayland**: Due to Wayland limitations, log in using an X11 session to use `toggle-kitty` smoothly.

## License

This project is licensed under the MIT License.

## Author

Developed by caesar003.

