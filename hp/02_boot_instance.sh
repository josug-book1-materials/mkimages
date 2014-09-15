function get_uuid () { cat - | grep " id " | awk '{print $4}'; }

export MY_WORK_NET=`neutron net-show work-net | get_uuid`
env |grep MY_

nova boot --flavor standard.xsmall \
--image "CentOS 6.3 Server 64-bit 20130116" \
--key-name key-temporary --security-groups sg-temporary \
--user-data userdata_mkimage_hp.txt --nic net-id=${MY_WORK_NET} centos-temp

nova list --fields name,status

