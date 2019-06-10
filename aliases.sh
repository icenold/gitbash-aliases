alias pkill='taskkill -f -pid';
alias portusage='netstat -a -b -o | grep -i';
alias docker-clear='docker rm -f $(docker container ls -aq)';
alias clear-docker='docker rm -f $(docker container ls -aq) && docker image rm -f $(docker images -f "dangling=true" -q);';
alias gull='git pull';
alias gp='git pull';
alias endserve='git pull && powershell ./start_server.ps1';
alias gitprettylog='git log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s"';
alias gitgraph="git log --all --graph --pretty=format:'%C(auto)%h%C(auto)%d %s %C(Blue)(%aN, %ar)'";
alias clear='printf "\033c"';

bind TAB:menu-complete;
