
#!/usr/bin/env bash
  
set -e
set -x
#wget
wget http://10.221.128.158:90/cms/agent/agent-updater
wget http://10.221.128.158:90/cms/agent/agent-updater.service

#mv
mv agent-updater /usr/local/agent/agent-updater
mv agent-updater.service /lib/systemd/system/agent-updater.service
#Install
systemctl daemon-reload
systemctl enable agent-updater.service
systemctl start agent-updater.service
