<h1 align="center">⚡ NitroShell for macOS ⚡</h1>
<p align="center">
  A smarter, cooler, voice-activated terminal powered by <strong>CodeBotD</strong> (aka Mitri 😎)<br>
  Fuzzy search, typo fixing, ASCII art banners, and 🔊 talking shell powers!
</p>

---

## ⚠️ Requirements (macOS only)

- `zsh` shell (default on macOS)
- `fzf` for fuzzy menus  
  → Install with: `brew install fzf`
- `python3` for typo detection
- *(Optional)* `oh-my-zsh` for themes/plugins

---

## 🛠️ Features

- 🎤 Voice-activated greeting with `say`
- 🔍 Fuzzy command launcher (`fzf`)
- 🧠 Smart typo detection (`Did you mean echo?`)
- 🎨 Orange + white ASCII banner
- ⚡ Quick access with `nitro` or `cmds`
- 🧪 Works in your normal terminal — no new apps!

---

## 🚀 Install NitroShell (macOS Only)

```
git clone https://github.com/CodeBotD/Nitro-Shell.git ~/.nitroshell
chmod +x ~/.nitroshell/shell.sh

```
🔧 Setup .zshrc

```
```
Open your ZSH config:

```
nano ~/.zshrc
```
  Paste this at the bottom:
```
# NitroShell by CodeBotD 🚀
alias nitro="~/.nitroshell/shell.sh"
alias cmds="say 'NitroShell activated' && nitro"

command_not_found_handler() {
  local cmd="$1"
  echo "zsh: command not found: $cmd"
  echo "NitroShell: Thinking... 🤔"

  local all_cmds=$(echo $PATH | tr ':' '\n' | xargs -I {} find {} -maxdepth 1 -type f -perm +111 2>/dev/null | xargs -n 1 basename | sort -u)

  local suggestion=$(python3 - <<EOF
import difflib
commands = """$all_cmds""".split()
matches = difflib.get_close_matches("$cmd", commands, n=1, cutoff=0.5)
print(matches[0] if matches else "")
EOF
)

  if [[ -n "$suggestion" ]]; then
    echo "NitroShell: Did you mean '$suggestion'? [Y/n]: "
    read -k1 answer
    echo ""
    if [[ "$answer" == [Yy] || "$answer" == "" ]]; then
      echo "🧠 NitroShell is running: $suggestion"
      eval "$suggestion"
    else
      echo "❌ Cancelled."
    fi
  else
    echo "NitroShell: I scrambled my brain and found nothing 🧠💥"
  fi
}

```
`
    Save with CTRL+O, then press Enter

 `   Exit with CTRL+X

  `  Reload your shell:

```
source ~/.zshrc

✅ Use NitroShell


    `🧨 Start NitroShell manually:

nitro

    🗣️ Activate with voice:

cmds (not working)

    (This alias is set but may not work depending on your setup)

```
🧠 Try a typo:

ecoh

You’ll see:

zsh: command not found: ecoh
NitroShell: Did you mean 'echo'? [Y/n]


```
```
<h1 align="center">👑 Made by Mitri (aka CodeBotD)</h1> <p align="center"> 🧠 I’m Dimitrius Farida — a kid coder with big energy!<br> I build awesome tech like NitroShell, Roblox games, Minecraft mods, and more!<br><br> 🌐 Check out more at <a href="https://github.com/CodeBotD">github.com/CodeBotD</a> </p> <h1 align="center">🧠 Wanna Contribute?</h1> <p align="center"> Found a bug? Got a 🔥 idea like rainbow banners or a terminal minigame?<br><br> 🎯 Fork the repo, make your changes, and send a PR!<br> Together we’ll make NitroShell smarter, cooler, and louder! 🚀 </p>

```
```
🌟 Future Ideas

    nitroboost → Fancy shell animations 💥

    fuel → Show battery charge status 🔋

    ascii → Random quotes or banners 🎨

    historyboost → Fuzzy search your past commands 🔍

    game → A terminal game like Fishy Pong 
