OK=0
KO=0

_dq_report () {
	if [ "$2" -eq 0 ]; then
	 	echo "✔ $1"
		OK=$(($OK+1))
	else
		echo "✘ $1"
	    KO=$(($KO+1))
	fi
}

fab --version > /dev/null 2>&1
_dq_report 'fabric' $?
pip --version > /dev/null 2>&1
_dq_report 'pip' $?
python --version > /dev/null 2>&1
_dq_report 'python' $?
virtualenv --version > /dev/null 2>&1
_dq_report 'virtualenv' $?
echo Your dq is $OK / $(($OK+$KO))

exit $KO
