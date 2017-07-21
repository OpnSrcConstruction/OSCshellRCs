# Defined in - @ line 0
function nmCdn --description 'alias nmCdn=nmcli -tpm con down id'
	nmcli -tpm con down id $argv;
end
