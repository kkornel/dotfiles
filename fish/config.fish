if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"
zoxide init fish | source
starship init fish | source

set fish_greeting ""
set -U fish_key_bindings fish_vi_key_bindings
set -U LANG en_US.UTF-8
set -U LC_ALL en_US.UTF-8
set -Ux EDITOR vim
set -Ux VISUAL vim
# set -Ux EDITOR nvim
# set -Ux VISUAL nvim

# Path
fish_add_path ~/.local/bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

if type -q exa
  alias ll "exa -l --icons"
  alias lla "ll -a"
end

# Abbrevations
abbr ca "cat ~/.config/alacritty/alacritty.yml"
abbr va "vim ~/.config/alacritty/alacritty.yml"

abbr cf "cat ~/.config/fish/config.fish"
abbr vf "vim ~/.config/fish/config.fish"
abbr sf "source ~/.config/fish/config.fish"

abbr ct "cat ~/.config/tmux/tmux.conf"
abbr vt "vim ~/.config/tmux/tmux.conf"
abbr st "tmux source ~/.config/tmux/tmux.conf"

abbr cs "cat ~/.config/skhd/skhdrc"
abbr vs "vim ~/.config/skhd/skhdrc"

abbr cy "cat ~/.config/yabai/yabairc"
abbr vy "vim ~/.config/yabai/yabairc"

abbr c "clear"
abbr e "exit"
abbr v "nvim"

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
abbr gswd "git switch develop"
abbr gsw- "git switch -"
abbr gd "git diff"
abbr gf "git fetch --all"
abbr gpl "git pull"
abbr gmd "git merge develop"
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

abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr tks "tmux kill-server"
abbr tn "tmux new -s (pwd | sed 's/.*\///g')"

abbr y "yarn"
abbr yb "yarn build"
abbr yd "yarn dev"
abbr ye "yarn e2e"
abbr yt "yarn test"

abbr ghs "gh copilot suggest"
abbr ghe "gh copilot explain"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/kornel.krzeslak@schibsted.com/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
