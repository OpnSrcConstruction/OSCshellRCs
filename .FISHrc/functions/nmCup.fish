# Defined in - @ line 0
function nmCup --description 'alias nmCup=nmcli -tpm con up id'
	nmcli -tpm con up id $argv;
end
