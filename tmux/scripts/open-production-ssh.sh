new-window
if-shell "wait 1" 'select-window -t "{last}"'
split-window -h
split-window -t 0 -v
split-window -t 2 -v
send-keys -t 0 ssh-production-110 Enter
send-keys -t 1 ssh-production-111 Enter
send-keys -t 2 ssh-production-210 Enter
send-keys -t 3 ssh-production-211 Enter
set-option synchronize-panes on
