# Defined in - @ line 0
function nmSlp --description 'alias nmSlp=nmcli -tpm nm sleep'
	nmcli -tpm nm sleep $argv;
end
