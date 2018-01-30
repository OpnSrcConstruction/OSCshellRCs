# Defined in - @ line 0
function ipt --description 'alias ipt=sudo /sbin/iptables'
	sudo /sbin/iptables $argv;
end
