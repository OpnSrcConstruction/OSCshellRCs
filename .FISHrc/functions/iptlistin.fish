# Defined in - @ line 0
function iptlistin --description 'alias iptlistin=sudo /sbin/iptables -L INPUT -n -v --line-numbers'
	sudo /sbin/iptables -L INPUT -n -v --line-numbers $argv;
end
