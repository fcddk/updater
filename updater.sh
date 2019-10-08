
#!/usr/bin/env bash
  
set -e
set -x

#Install
systemctl daemon-reload
systemctl enable agent-updater.service
systemctl start agent-updater.service
