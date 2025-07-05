# ⚡ NitroShell

**NitroShell** is a custom turbo layer for your terminal that adds a whole new world of interactivity, speed, and style to your command line — without needing a new terminal app. 🚀

It adds:

- Fuzzy command menus 🧠
- Autocomplete with style
- Custom commands
- Cool themes + prompt
- Full Git + System command launcher
- Bash, ZSH, and full Linux/macOS compatibility!

---

## 🧰 Requirements

- `zsh` or `bash`
- `fzf` (for fuzzy menus)
- `oh-my-zsh` (for plugins & themes)

Install required stuff:

```bash
# macOS
brew install zsh fzf

# Linux (Debian/Ubuntu)
sudo apt install zsh fzf

🔧 Setup Instructions
1️⃣ Install Oh My Zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

2️⃣ Add Extras (autocomplete + syntax highlighting)

# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

In your ~/.zshrc, add:

# NitroShell plugins
source ~/.fzf.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

Reload with:

source ~/.zshrc

3️⃣ Clone NitroShell

git clone https://github.com/YOUR_USERNAME/nitroshell.git ~/.nitroshell
cd ~/.nitroshell
chmod +x *.sh

4️⃣ Run NitroShell

~/.nitroshell/shell.sh

Or make it a command:

echo 'alias nitro="~/.nitroshell/shell.sh"' >> ~/.zshrc
source ~/.zshrc

Then type nitro to launch! 🚀
🧠 Nitro Launcher – All Commands

Want to browse every available command and launch one? Run:

~/.nitroshell/commandmenu.sh

It will show you a scrollable list of ALL terminal commands available on your system! 🧙
Example usage:

🔍 Nitro Command Menu >
[ls]
[git]
[python3]
[top]
[clear]
[nitroboost]

Pick one and it runs!
📁 Folder Structure

nitroshell/
├── shell.sh             # Launch script
├── commandmenu.sh       # Universal command browser!
├── gitmenu.sh           # Git helper
├── theme.zsh            # Colors & prompt
├── banner.txt           # ASCII banner
├── commands/            # Extra scripts
│   ├── boost.sh
│   └── game.sh
└── README.md

🔥 Future Ideas

    nitroboost → Makes terminal effects!

    fuel → Battery status!

    ascii → Shows a random banner or quote

    historyboost → Fuzzy search command history

    game → Little terminal game (like Fishy Pong 🐟)

👨‍💻 Made by Dimitrius Farida

