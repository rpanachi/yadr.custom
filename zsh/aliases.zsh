# bin
alias grunt="node_modules/grunt-cli/bin/grunt"
alias redis.server="redis-server /usr/local/etc/redis.conf --daemonize yes && echo 'Redis Server started successfully!'"
alias rm="rm -iv $1"

# utils
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"
alias myip="curl ifconfig.me"

# stuff
alias router="ssh root@192.168.1.1"
