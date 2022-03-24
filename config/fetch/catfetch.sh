#!/bin/env bash 

# Cat ascii
echo
FIRST_LINE="     ／l、"
SECOND_LINE="    (ﾟ､ ｡ 7 " 
THIRD_LINE="     l、ﾞ~ヽ"
FOURTH_LINE="     じしf_,)ノ"

# Colors
G='\e[0;32m'  # green
C='\e[0;34m'  # cyan
B='\e[0;34m'  # blue
BL='\e[0;37m' #black
R='\e[0;31m'  #red
P='\e[0;35m'
Y='\e[0;33m'
RB='\e[1;31m'
RESET='\e[0m'
BOLD='\e[1m'

# clear the terminal
# comment it if u dont want
tput clear

# function for the main thing
main ()
{
  echo -e "$FIRST_LINE"
  echo -e "$SECOND_LINE"
  echo -e "$THIRD_LINE"
  echo -e "$FOURTH_LINE"
 # echo -e "  ▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁"

 # Create an empty line
  echo 
  # call the 'info' function 
  info
}

help ()
{
  echo "Try execute the command again with no parameters"
}

info ()
{
  # variables for the info
  local user=$USER
  local wm=bspwm
  local pkg=$(pacman -Qq | wc -l)
  # local os=

  # print
  echo -e "$RESET$B$BOLD    $user/$HOSTNAME"
  echo 
  echo -e "$R$BOLD    User $RESET - $BL$user"
  echo -e "$G$BOLD    OS   $RESET -$BL$(hostnamectl | grep -w Arch | cut -d ':' -f2 | grep -w Linux)"
  echo -e "$P$BOLD    WM   $RESET - $BL$wm"
  echo -e "$Y$BOLD    Pkg  $RESET - $BL$pkg"
  echo 

}

# Run
case $1 in 
  "")
    main
    ;;
  "info")
    info
    ;;
  -h|--help)
    help
    ;;
esac
