# Defined in - @ line 0
function reboot --description 'alias reboot=sudo /sbin/reboot'
	sudo /sbin/reboot $argv;
end
