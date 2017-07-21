# Defined in - @ line 0
function nmWi --description 'alias nmWi=nmcli -tpm nm wifi'
	nmcli -tpm nm wifi $argv;
end
