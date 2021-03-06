# bin
alias grunt="node_modules/grunt-cli/bin/grunt"
alias redis.server="redis-server /usr/local/etc/redis.conf --daemonize yes"
alias postgres.server="pg_ctl -D /usr/local/var/postgres start"
alias rm="rm -iv $1"

# dev
alias be="bundle exec"

# utils
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
alias myip="curl ifconfig.me"

# unaliase
unalias mvim
alias mvim="/Applications/MacVim.app/Contents/bin/mvim"

# stuff
