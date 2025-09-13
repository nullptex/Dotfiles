NEWLINE=$'\n'
TAB=' '
PROMPT="${NEWLINE}%K{green}%F %* %f%k%F{green}%f %F{blue}%n%f %F{yellow}%~%f > "

echo -e "${NEWLINE}$(uptime)${TAB}$(uname -r)" 
