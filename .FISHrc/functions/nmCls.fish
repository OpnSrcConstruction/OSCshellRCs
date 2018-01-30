# Defined in - @ line 0
function nmCls --description 'alias nmCls=nmcli -tpm con'
	nmcli -tpm con $argv;
end
