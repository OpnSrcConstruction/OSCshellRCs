# Defined in - @ line 0
function nmNew --description 'alias nmNew=nmcli -tpm dev wifi connect'
	nmcli -tpm dev wifi connect $argv;
end
