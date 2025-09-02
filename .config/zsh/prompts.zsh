NEWLINE=$'\n'
TAB=' '
PROMPT="${NEWLINE}%K{green}%F $(date +%_I:%M) %f%k%F{green}%f %F{blue}%n%f %F{yellow}%~%f > "

echo -e "${NEWLINE}$(uptime)${TAB}$(uname -r)" 
