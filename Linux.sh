function open() {
  [[ ! (( $+commands[explorer.exe] )) ]] && return 1

  if [ $# != 1 ]; then
    explorer.exe .
  else
    if [ -e $1 ]; then
      cmd.exe /c start $(wslpath -w $1) 2> /dev/null
    else
      echo "open: $1 : No such file or directory" 
    fi
  fi
}
