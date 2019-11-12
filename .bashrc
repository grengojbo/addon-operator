alias update='apk update && apk upgrade'
export HISTTIMEFORMAT="%d/%m/%y %T "
export PS1='\u@\h:\W \$ '
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
# export PATH=/usr/local/aws/bin:${PATH}
source /etc/profile.d/bash_completion.sh
# complete -C '/usr/local/aws/bin/aws_completer' aws