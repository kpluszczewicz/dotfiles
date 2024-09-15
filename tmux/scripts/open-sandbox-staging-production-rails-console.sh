new-window
if-shell "wait 1" 'select-window -t "{last}"'
split-window -h
split-window -v

send-keys -t 0 ssh-sandbox Enter
send-keys -t 1 ssh-staging Enter
send-keys -t 2 ssh-production-110 Enter
set-option synchronize-panes on
send-keys -t 0 'cd www/koleo/current' Enter
send-keys -t 0 'bin/rails c' Enter
