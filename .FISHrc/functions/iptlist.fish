# Defined in - @ line 0
function iptlist --description 'alias iptlist=sudo /sbin/iptables -L -n -v --line-numbers'
	sudo /sbin/iptables -L -n -v --line-numbers $argv;
end
