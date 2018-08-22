# Aliasing
alias dco='docker-compose'
alias git=hub

export PATH="$HOME/.bin:$PATH"

# Sets Hub autocompletions
fpath=(~/.zsh_completions $fpath)
autoload -U compinit && compinit

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/Downloads/google-cloud-sdk/path.zsh.inc" ]; then source "${HOME}/Downloads/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/Downloads/google-cloud-sdk/completion.zsh.inc" ]; then source "${HOME}/Downloads/google-cloud-sdk/completion.zsh.inc"; fi
