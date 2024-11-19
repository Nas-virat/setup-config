### pbcopy 
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias sz="source ~/.zshrc"
alias nc="nvim ~/.config/nvim"
alias n="nvim ."

### Lazygit
alias lg="nvim ."

alias ng='kubectl exec -it $(kubectl get pods --template "{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}" | grep nginx | head -n 1) -- bash'


### Fuzzy finder
source <(fzf --zsh)

### Use fd instead of fzf
show_file_or_dir_preview="if [ -d {} ]; then tree {} | head -200; else bat -n --color=always --line-range :500 {}; fi"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_OPTS="--preview '$show_file_or_dir_preview'"
export FZF_ALT_C_OPTS="--preview 'tree {} | head -200'"
### Options to fzf command
export FZF_COMPLETION_OPTS='--border --info=inline --layout=reverse'
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --info=inline --border --margin=1 --padding=1"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
