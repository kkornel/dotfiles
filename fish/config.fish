set fish_greeting ""

# Variables
set -gx TERM xterm-256color
set -U EDITOR nvim

eval "$(/opt/homebrew/bin/brew shellenv)"

starship init fish | source
zoxide init fish | source

# Path
fish_add_path ~/.local/bin

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

# Aliases
# alias g git
# alias ga="git add ."
# alias gc="git commit -m"
# alias gca="git commit --amend"
# alias gacm="git add . && git commit -m"
# alias gpl="git pull"
# alias gps="git push"
# alias gpsf="git push --force"
# alias gc-="git checkout -"
# alias gc="git checkout"
# alias gs-="git switch -"
# alias gs="git switch"

# alias y="yarn"
# alias ys="yarn start"
# alias yd="yarn dev"
# alias yw="yarn watch"
# alias yb="yarn build"

if type -q exa
  alias ll "exa -l --icons"
  alias lla "ll -a"
end

# Abbrevations
abbr c "clear"
abbr ca "cat ~/.config/alacritty/alacritty.yml"
abbr cf "cat ~/.config/fish/config.fish"
abbr ct "cat ~/.config/tmux/tmux.conf"
abbr e "exit"
abbr g "git"
abbr gs "git status"
abbr ga "git add ."
abbr gb "git branch -v"
abbr gc "git commit"
abbr gca "git commit --amend"
abbr gcl "git clone"
abbr gco "git checkout -b"
abbr gco- "git checkout -"
abbr gsw "git switch"
abbr gsw- "git switch -"
abbr gd "git diff"
abbr gf "git fetch --all"
abbr gpl "git pull"
abbr gma "git merge --abort"
abbr gmc "git merge --continue"
abbr gp "git push"
abbr gpf "git push -f"
abbr gpom "git pull origin main"
abbr gpr "gh pr create"
abbr gpum "git pull upstream master"
abbr gr "git remote"
abbr gra "git remote add"
abbr grao "git remote add origin"
abbr grau "git remote add upstream"
abbr grv "git remote -v"
abbr gst "git status"
abbr nb "npm run build"
abbr nd "npm run dev"
abbr ns "npm run start"
abbr ni "npm install"
abbr nt "npm run test"
abbr pd "pnpm dev"
abbr pi "pnpm install"
abbr pb "pnpm build"
abbr sf "source ~/.config/fish/config.fish"
abbr st "tmux source ~/.config/tmux/tmux.conf"
abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr tks "tmux kill-server"
abbr tn "tmux new -s (pwd | sed 's/.*\///g')"
abbr v "nvim"
abbr va "nvim ~/.config/alacritty/alacritty.yml"
abbr vf "nvim ~/.config/fish/config.fish"
abbr vt "nvim ~/.config/tmux/tmux.conf"
abbr y "yarn"
abbr yb "yarn build"
abbr yd "yarn dev"
abbr ye "yarn e2e"
abbr yt "yarn test"

# pnpm
set -gx PNPM_HOME "/Users/kornel/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
