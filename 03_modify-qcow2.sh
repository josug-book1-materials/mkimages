virsh destroy centos6
virt-sysprep -d centos6
virsh undefine centos6
qemu-img convert -p -c -O qcow2 /tmp/centos6.qcow2 /tmp/centos6-base.qcow2
