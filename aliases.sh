alias pkill='taskkill -f -pid';
alias portusage='netstat -a -b -o | grep -i';
alias docker-clear='docker rm -f $(docker container ls -aq)';
alias clear-docker='docker rm -f $(docker container ls -aq) && docker image rm -f $(docker images -f "dangling=true" -q);';
alias gull='git pull';
alias gp='git pull';
alias endserve='git pull && powershell ./start_server.ps1';
alias gitprettylog='git log --pretty="%C(Yellow)%h  %C(reset)%ad (%C(Green)%cr%C(reset))%x09 %C(Cyan)%an: %C(reset)%s"';
alias icelog="git log --all --graph --pretty=format:' %C(auto)%h %C(Blue)(%aN)%C(auto)%d %n %C(auto)%s%C(Green)(%ar) %n'";
icediff(){
  if [ "$1" == "" ]
  then
    git difftool --dir-diff --no-prompt;
  else
    git difftool --dir-diff --no-prompt $1~1 $1;
  fi
};
alias clear='printf "\033c"';

bind TAB:menu-complete;


export PATH=$PATH:"/C/Program Files (x86)/Meld/lib";

#gitgraph is aliased to `git log --all --graph --pretty=format:'%C(auto)%h%C(auto)%d %s %C(Blue)(%aN, %ar)''
