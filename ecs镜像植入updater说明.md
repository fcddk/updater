
## updater镜像自启安装部署说明
# 前言
将agent-updater打到ecs虚机镜像里面，通过虚机启动主动拉起agent-updater守护进程。  

Agent-updater守护进程由systemd控制：  

Systemd 控制脚本：/lib/system/system/agent-updater.service  

Agent-updater工作dir: /usr/local/agent/

Agent-updater程序可执行文件：/usr/local/agent/agent-updater
# Ecs虚机镜像植入agent-updater
1、	agent-updater.service脚本放在/lib/system/system/agent-updater.service  

2、	agent-updater可执行文件：/usr/local/agent/agent-updater  (/usr/local/agent/下 放agent-updater)

3、	虚机启动初始化sh文件：updater.sh
