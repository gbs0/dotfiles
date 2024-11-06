ZSH=$HOME/.oh-my-zsh
# fortune | cowsay 

# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
# ZSH_THEME="awesomepanda"

# Useful plugins for Rails development
plugins=(gitfast last-working-dir common-aliases sublime history-substring-search zsh-syntax-highlighting)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"
unalias rm # No interactive rm by default (brought by plugins/common-aliases)
unalias lt # we need `lt` for https://github.com/localtunnel/localtunnel

# brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load rbenv if installed
# Load rbenv automatically by appending the following to ~/.zshrc:
# eval "$(rbenv init - zsh)"
export PATH="${HOME}/.rbenv/bin:${PATH}"
type -a rbenv > /dev/null && eval "$(rbenv init - zsh)"

# Load nvm (to manage your node versions)
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Call `nvm use` automatically in a directory with a `.nvmrc` file
autoload -U add-zsh-hook
load-nvmrc() {
  if nvm -v &> /dev/null; then
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use --silent
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      nvm use default --silent
    fi
  fi
}
type -a nvm > /dev/null && add-zsh-hook chpwd load-nvmrc
type -a nvm > /dev/null && load-nvmrc

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
# Same for `./node_modules/.bin` and nodejs
export PATH="./bin:./node_modules/.bin:${PATH}:/usr/local/sbin"

# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export BUNDLER_EDITOR=code
export EDITOR=code


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
# [[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

# Set Spaceship ZSH as a prompt
# autoload -U promptinit; promptinit
# prompt spaceship

# SPACESHIP_PROMPT_SEPARATE_LINE='false'
# SPACESHIP_PROMPT_ADD_NEWLINE='false'
# SPACESHIP_GIT_STATUS_UNTRACKED='≈'
# SPACESHIP_GIT_STATUS_MODIFIED='≡'
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/postgresql@14/bin:$PATH"
export PATH="/usr/local/opt/postgresql@12/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/gbs0/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/gbs0/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/gbs0/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/gbs0/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/gbs0/.bun/_bun" ] && source "/Users/gbs0/.bun/_bun"

[[ -s "/Users/gbs0/.gvm/scripts/gvm" ]] && source "/Users/gbs0/.gvm/scripts/gvm"

# Langflow setup
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YESexport PATH="/usr/local/opt/postgresql@12/bin:$PATH"
