# Defined in - @ line 0
function fastping --description 'alias fastping=ping -c 10 -s.2'
	ping -c 10 -s.2 $argv;
end
