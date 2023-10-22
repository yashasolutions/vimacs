#!/bin/sh

# NOTE: not tested on apt package manager please send a PR
read -p "Install Cmd (yay -S, pamac install, sudo apt install etc.): " install

$install so-git # Stack Overflow Queries
$install perf
$install gh

read -p "Browser? (y/n): " browser
if [ "$browser" = "y" ]
then
  read -p "Binary or Source? (b/s): " bin
  if [ "$bin" = "b" ]
  then
    $install browsh-bin
  elif [ "$bin" = "s" ]
  then
    $install browsh
  fi
fi

read -p "IRC Client? (y/n): " irc
if [ "$irc" = "y" ]
then
  $install weechat # ranger is unneded (we already have an awesome file manager)
fi

read -p "Discord Client? (y/n): " discord
if [ "$discord" = "y" ]
then
  $install discordo-git # Discord Client
fi

read -p "World Map? (y/n): " map
if [ "$map" = "y" ]
then
  $install nodejs-mapscii
fi

read -p "Email Client? (y/n): " mail
if [ "$mail" = "y" ]
then
  $install mutt
fi

##############################
if command -v pipx &> /dev/null
then
  echo "pipx is installed"
  $install pipx
  # pipx install textual-paint # PAINT in your terminal
  pipx install tuir # Reddit
else
  echo "pipx is not installed"
  echo "pipx is required to install tuir (Reddit)"
  echo "Do you want to install pipx?"
  read -p "y/n: " pipx
  if [ "$pipx" = "y" ]
  then
    $install pipx
    # pipx install textual-paint # PAINT in your terminal
    pipx install tuir # Reddit
  else
    echo "Skipping pipx installation"
  fi
fi
##############################

# See: https://seniormars.github.io/posts/neomutt/#motivation
# $instally neomutt # an email client
# $instally gnupg # TODO: Still in WIP.



# # Create a key and follow the instructions that are prompted:
# gpg --full-generate-key
#
# # Copy your public key:
# gpg --list-secret-keys --keyid-format=long
#
# # FIX: Unable to open mailbox /var/spool/mail/$USER
# sudo touch /var/mail/$USER
# sudo chown $USER:mail /var/mail/$USER
# sudo chmod 660 /var/mail/$USER
#
# pipx install urlscan

# gh extension install dlvhdr/gh-dash # Octo is preferred over gh dash

# NOTE: These cool block comments are generated by built-in snippets <3

#######################
#        CARGO        #
#######################

echo "Cargo is required to install Hacker News TUI"
read -p "Install hacker news client (y/n): " hn

if !command -v cargo &> /dev/null
then
  echo "cargo not found!"
  $install cargo
else
  echo "cargo is installed"
fi

if [ "$hn" = "y" ]
then
  cargo install hackernews_tui
fi

echo "Installing LSP Tools"
$install codespell textlint markdownlint stylua ruff

if ! command -v npm &> /dev/null
then
  echo "npm not found!"
  $install npm
else
  echo "npm is installed"
fi

if ! command -v yarn &> /dev/null
then
  echo "yarn not found!"
  $install yarn # required for markmap
else
  echo "yarn is installed"
fi

#######################################
#        ORGMODE DOC GENERATOR        #
#######################################
# $install pandoc


###################################
#        CORE INSTALLATION        #
###################################
echo "Installing $(green NvChad) ($(green vimacs\'s) UI)"
# create tmp dir, cd into it, clone nvchad, cd into nvchad, run install.sh, cd back to vimacs, remove tmp dir
#https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
#https://github.com/UTFeight/vimacs

cd /tmp/ || exit
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

git clone https://github.com/UTFeight/vimacs

cd vimacs && mv custom ~/.config/nvim/lua/custom
cd .. && rm -rf vimacs && nvim


export PATH="$HOME/.local/share/nvim/mason/bin"
echo "Please add the following line to your shell config file (e.g. ~/.bashrc, ~/.zshrc ~/.config/fish.config etc.)"
echo "    export PATH=\"\$HOME/.local/share/nvim/mason/bin\""
echo "Please Check out: https://github.com/nvim-neotest/neotest#configuration for testing framework configuration"
echo "Please Check out `:Mason` cmd inside vimacs to install more DAP, LSP, Linter etc."
echo "But you need to configure them manually!"
echo "Vimacs comes with Rust, C, C++, Python Debuggers out of the box!"
echo "Remove them from .local/share/nvim/mason/bin if you don't need them!"
