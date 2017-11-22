#!/usr/bin/env bash
RESET="\e[0m"
YELLOW="\e[93m"
GREEN="\e[32m"
RED="\e[31m"
BOLD="\e[1m"
INVERT="\e[7m"
echo ""
echo -e "${YELLOW}+--------------------------------------+${RESET}"
echo -e "${YELLOW}|${RESET} Local ${BOLD}${YELLOW}${INVERT} git ${RESET} repository configuration ${YELLOW}|${RESET}"
echo -e "${YELLOW}+--------------------------------------+${RESET}"
echo ""
echo -e "What is your git ${BOLD}${YELLOW}name/alias${RESET}?"
read NAME
echo -e "Your git (confirmed) ${BOLD}${YELLOW}(public) email${RESET}?"
read EMAIL
echo -e "Follow chmod file properties? ${BOLD}${YELLOW}true|false${RESET}"
read FILEPROPS
git config user.name "$NAME"
git config user.email "$EMAIL"
git config core.fileMode "$FILEPROPS"
exit 0

