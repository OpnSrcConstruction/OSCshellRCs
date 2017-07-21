# Defined in - @ line 0
function ports --description 'alias ports=netstat -tulnap'
	netstat -tulnap $argv;
end
