{
  enable = true;
  initExtra = ''
    export GOPATH=~/go
    export PATH=~/.local/bin:$GOPATH/bin:$PATH
  '';
  historyControl = [ "erasedups" "ignorespace" ];
  historySize = 1000000;
  historyIgnore = [ "ls" "ps" "history" ];
  shellOptions = [ "histappend" ];
}
