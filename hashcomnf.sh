echo "";echo "Hashcom";echo "";n=$(cat $1|shasum -a 256|cut -c1-8);echo "/* $n */";echo "";
