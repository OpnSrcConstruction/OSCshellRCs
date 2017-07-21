# Defined in - @ line 0
function nmnm --description 'alias nmnm=nmcli -ypm nm status list'
	nmcli -ypm nm status list $argv;
end
