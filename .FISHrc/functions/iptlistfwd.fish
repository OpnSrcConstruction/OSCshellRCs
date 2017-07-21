# Defined in - @ line 0
function iptlistfwd --description 'alias iptlistfwd=sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
	sudo /sbin/iptables -L FORWARD -n -v --line-numbers $argv;
end
