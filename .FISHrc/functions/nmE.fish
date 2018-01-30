# Defined in - @ line 0
function nmE --description 'alias nmE=nmcli -tpm nm enable'
	nmcli -tpm nm enable $argv;
end
