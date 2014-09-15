cd $HOME
source openrc
nova keypair-add key-temporary | tee key-temporary.pem
chmod 600 key-temporary.pem

neutron security-group-create --description "temporary secgroup" sg-temporary
neutron security-group-rule-create --ethertype IPv4 \
--protocol tcp --port-range-min 22 --port-range-max 22 \
--remote-ip-prefix 0.0.0.0/0 sg-temporary

