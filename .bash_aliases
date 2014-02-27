# ~/.bash_aliases: executed by bash(1) when login shell exits.

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#git
alias g='git'

alias gpull='git pull --prune'
alias gl="git log -n 20 --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gpush='git push origin HEAD'
alias ga='git add'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gcm='git commit -m'
alias gamend='git commit --amend -m'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -s'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gam="git commit --amend"

#padrino
alias pstart="bundle exec padrino start"
alias pcons="bundle exec padrino console"

#rails
alias rstart="bundle exec rails server"
alias rcons="bundle exec rails console"
alias bpuma="bundle exec puma"

#bundler
alias bi="bundle install"
alias be="bundle exec"

#rake
alias rs="bundle exec rspec"
rsf() { bundle exec rspec $1; }
alias rsg="bundle exec guard"

#photos
resizeimg() { for i in *; do convert "$i" -resize $1 "$i"; done; }

#firewall
openport() { sudo iptables -A INPUT -p tcp --dport $1 -j ACCEPT; }
closeport() { sudo iptables -A INPUT -p tcp --dport $1 -j DROP; }

#kill
kill_all() { sudo kill -9 $(ps opid= -C $1); }

#go
go() { cd ~/git/$1; }

#files
renametojpg() { for i in *; do mv "$i" "$i".jpg; done; }
renametocounts() { new=0; for i in *; do name=($( printf "%03d-01" "$new" )); mv "$i" "$name"; ((new++)); done; }

alias time_update='sudo ntpdate -u ntp.ubuntu.com'
