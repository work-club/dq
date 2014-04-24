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

curl --version > /dev/null 2>&1
_dq_report 'curl' $?

fab --version > /dev/null 2>&1
_dq_report 'fabric' $?
git --version > /dev/null 2>&1
_dq_report 'git' $?

java -version > /dev/null 2>&1
_dq_report 'java' $?

node --version > /dev/null 2>&1
_dq_report 'node' $?

perl -v > /dev/null  2>&1
_dq_report 'perl' $?

pip --version > /dev/null 2>&1
_dq_report 'pip' $?
python --version > /dev/null 2>&1
_dq_report 'python' $?
ruby -v > /dev/null 2>&1
_dq_report 'ruby' $?

vi --version > /dev/null 2>&1
_dq_report 'vi' $?
virtualenv --version > /dev/null 2>&1
_dq_report 'virtualenv' $?
echo Your dq is $OK / $(($OK+$KO))

exit $KO
