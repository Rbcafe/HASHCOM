figlet hashcom;n=$(cat $1|shasum -a 256|cut -c1-8);echo "/* $n */";echo "";
