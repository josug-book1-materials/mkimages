mv -f /etc/cloud/cloud.cfg.rpmnew /etc/cloud/cloud.cfg

sed -i -e 's/^disable_root: 1$/disable_root: 0/' /etc/cloud/cloud.cfg
sed -i -e 's/^ - set_hostname$/ - [ set_hostname, always]/' /etc/cloud/cloud.cfg
sed -i -e 's/^    name: centos$/    name: root/' /etc/cloud/cloud.cfg

rm -rf /var/lib/cloud/*
rm -rf /etc/ssh/ssh_host_*
rm -rf /root/.ssh/authorized_keys
rm -rf /var/log/cloud.log
rm -rf /var/log/lastlog
touch /var/log/lastlog

