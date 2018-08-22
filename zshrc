# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

# Essential
source ~/.zplug/init.zsh

# Make sure to use double quotes to prevent shell expansion
zplug "zsh-users/zsh-completions"

# Prezto modules
zplug 'modules/environment', from:prezto
zplug 'modules/terminal', from:prezto
zplug 'modules/editor', from:prezto
zplug 'modules/history', from:prezto
zplug 'modules/directory', from:prezto
zplug 'modules/spectrum', from:prezto
zplug 'modules/utility', from:prezto
zplug 'modules/completion', from:prezto
zplug 'modules/homebrew', from:prezto
zplug 'modules/git', from:prezto
zplug 'modules/osx', from:prezto
zplug 'modules/ruby', from:prezto
zplug 'modules/rails', from:prezto
zplug 'modules/tmux', from:prezto
zplug 'modules/prompt', from:prezto



# Prezto configuration options
zstyle ':prezto:*:*' color 'yes'
zstyle ':prezto:module:editor' dot-expansion 'yes'
zstyle ':prezto:module:prompt' theme 'steeef'
zstyle ':prezto:module:terminal' auto-title 'yes'
zstyle ':prezto:module:tmux:iterm' integrate 'no'
zstyle ':prezto:module:ruby:chruby' auto-switch 'yes'


# Install packages that have not been installed yet
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    else
        echo
    fi
fi

zplug load

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
