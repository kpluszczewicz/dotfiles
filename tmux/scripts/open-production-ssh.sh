new-window
if-shell "wait 1" 'select-window -t "{last}"'
split-window -t 0 -v
split-window -t 1 -v
split-window -t 0 -v
split-window -t 3 -h
split-window -t 2 -h
split-window -t 1 -h
split-window -t 0 -h
send-keys -t 0 ssh-production-110 Enter
send-keys -t 1 ssh-production-111 Enter
send-keys -t 2 ssh-production-112 Enter
send-keys -t 3 ssh-production-113 Enter
send-keys -t 4 ssh-production-210 Enter
send-keys -t 5 ssh-production-211 Enter
send-keys -t 6 ssh-production-212 Enter
send-keys -t 7 ssh-production-213 Enter
set-option synchronize-panes on
