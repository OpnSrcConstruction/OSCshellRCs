# Defined in - @ line 0
function nmWl --description 'alias nmWl=nmcli -tpm dev wifi list'
	nmcli -tpm dev wifi list $argv;
end
