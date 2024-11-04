# send-keys "`while read line; do printf "%s" "$line Enter "; done < ~/koleo/console.rb | sed -e 's/ / Space /g'`"
run-shell 'tmux send-keys `sed "s/$/ Enter /" ~/koleo/console.rb | sed -e "s/ / Space /g"`'
