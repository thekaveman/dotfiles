# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# ls
alias l='ls -CF --color=auto'
alias la='ls -AF --color=auto'
alias ld='ls -dl --color=auto'
alias lg='ls -alFgh --color=auto'
alias ll='ls -alFh --color=auto'

# protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# Cmd-style clear
alias cls='clear'


# git related
alias gita='git add'
alias gitb='git branch'
alias gitc='git commit'
alias gitcan='git commit --amend --no-edit'
alias gitcb='git checkout -b'
alias gitcm='git commit -m'
alias gitl='git log --graph --oneline --all'
alias gitps='git push'
alias gitpl='git pull'
alias gits='git status'

alias sshkg='ssh-keygen -t rsa -b 4096 -C'

alias tarx='tar xzvf'

alias vimp='vim -p'
