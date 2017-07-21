# Defined in - @ line 0
function iptlistout --description 'alias iptlistout=sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
	sudo /sbin/iptables -L OUTPUT -n -v --line-numbers $argv;
end
