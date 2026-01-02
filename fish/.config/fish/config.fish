# --- SETTINGS ---
set -g fish_greeting # Turns off the intro message
set -g fish_term24bit 1

# --- PATH ---
# Fish handles pathing much better than Zsh. Use fish_add_path.
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/bin
fish_add_path ~/.local/bin
fish_add_path ~/go/bin

# --- ALIASES ---
alias v="nvim"
alias cls="clear"
alias ls="eza --icons=always"
alias ll="eza -lh --icons=always --git"
alias fconfig="nvim ~/.config/fish/config.fish"
alias sconfig="nvim ~/.config/starship.toml"
alias cat="bat"
alias reload="source ~/.config/fish/config.fish"
alias refresh="yabai --restart-service; skhd --restart-service; brew services restart sketchybar"

# git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gsta='git stash push'
alias gstp='git stash pop'

# Colour aliases
alias cat='bat'
alias grep='grep --color'
alias tree='tree -C'

# Safety aliases
alias cp='cp -iv'
alias ln='ln -iv'
alias mkdir='mkdir -pv'
alias mv='mv -iv'
alias rm='rm -iv'
alias wget='wget -c'

# Fuzzy find aliases
alias f='fzf-tmux'
alias vf='nvim `fzf-tmux`'

# Jupyter aliases
alias lab='jupyter lab'
alias notebook='jupyter notebook'

# System visualization tools
alias df='duf'
alias du='dust'
alias top='glances'

# --- CONDA INITIALIZATION ---
# This allows your 🐍 to show up when you activate envs
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" hook | source
end

# --- PROMPT ---
starship init fish | source

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
