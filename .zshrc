export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="random"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH=$PATH:/usr/local/go/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

alias python=/usr/bin/python3
alias clangd=/usr/bin/clang-12

alias sail='[ -f sail  ] && sh sail || sh vendor/bin/sail'
export PATH=/usr/local/bin/exercism:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

export TOKEN_BLOG=
export PAT=
export DIGITAL_OCEAN_ACCESS_TOKEN=
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export OPENAI_SECRET_KEY=
export WSL_SETTINGS=

export FZF_DEFAULT_COMMAND='rg --files --follow --hidden -g "!{node_modules/*,.git/*,vendor/,*.swp,*.swo}" --glob "!.{idea/*}"'

alias sd='fzf -m | xargs -I{} rg --fixed-strings --files-with-matches {} --hidden --glob "!.{yarn/**,rustup/**,vscode-server/**,cache/**}"'

# alias sd='fzf -m | xargs -I{} rg --fixed-strings --files-with-matches {} --hidden --glob "!**/.yarn/**" --glob "!**/.vscode-server/**" --glob "!**/.terraform.d/**" --glob "!**/.rustup/**" --glob "!**/.rbenv/**" --glob "!**/.oh-my-zsh/**" --glob "!**/.nvm/**" --glob "!**/.npm/**" --glob "!**/.mix/**" --glob "!**/.minikube/**" --glob "!**/.local/**" --glob "!**/.kube/**" --glob "!**/.hex/**" --glob "!**/.gnupg/**" --glob "!**/.giget/**" --glob "!**/.fzf/**" --glob "!**/.elixir-ls/**" --glob "!**/.dotnet/**" --glob "!**/.docker/**" --glob "!**/.cargo/**" --glob "!**/.cache/**" --glob "!**/.byobu/**" --glob "!**/.config/**" --glob "!node_modules/**" --glob "!.git/**" --glob "!vendor/**" --glob "!*.swo" --glob "!*.swp" | xargs -I{} sed -i ""'

# Alias custom for C/C++ compiler also generate basic init source file
alias castC="gcc -Wall -save-temps"
alias castCpp="g++ -Wall -save-temps"
alias stdC="echo -e '#include <iostream>\n\nint main() {\n\tprintf(\"hello world\");\n\treturn 0;\n}'"

# Alias custom for cd
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
