# colors
# Black       0;30     Dark Gray     1;30
# Blue        0;34     Light Blue    1;34
# Green       0;32     Light Green   1;32
# Cyan        0;36     Light Cyan    1;36
# Red         0;31     Light Red     1;31
# Purple      0;35     Light Purple  1;35
# Brown       0;33     Yellow        1;33
# Light Gray  0;37     White         1;37

red=\e[0;31m
RED=\e[1;31m
blue=\e[0;34m
BLUE=\e[1;34m
cyan=\e[0;36m
CYAN=\e[1;36m
normal=\e[0m
purple=\e[0;35m
PURPLE=\e[1;35m

echo -e "$red red\n"
echo -e "${blue}blue\n"
echo -e "${purple}purple\n"
echo -e "${gray}gray\n"
echo -e "${green}green\n"
echo -e "${gray}gray\n"
echo -e "${cyan}cyan\n"
echo -e "${RED}RED\n"
echo -e "${BLUE}BLUE\n"
echo -e "${CYAN}CYAN\n"
echo -e "${PURPLE}PURPLE\n"
