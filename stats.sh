$HOME/stats/logresolvemerge.pl $HOME/logs/*access*.log* \
| sed -n '/'$(date '+%d\/%b\/%Y' -d '1 month ago')'/,$ p' \
| goaccess --log-format=COMBINED \
-o $HOME/www/stats/index.html \
--html-prefs='{"theme":"bright"}' -
