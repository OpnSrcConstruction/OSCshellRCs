# Defined in - @ line 0
function path --description alias\ path=echo\ -e\ \$PATH//:/\\\\n
	echo -e $PATH//:/\\n $argv;
end
