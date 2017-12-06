#!/usr/bin/env bash

# Derived from https://github.com/docksal/service-cli/blob/develop/healthcheck.sh

# Initialization phase in startup.sh is complete
[[ ! -f /var/run/cli ]] && exit 1

# supervisor services are running
if [[ -f /var/run/supervisord.pid ]]; then
	[[ ! -f /var/run/sshd.pid ]] && exit 1
fi

# Check port 80 open
(nc -z -w 1 127.0.0.1 80) || exit 1

exit 0