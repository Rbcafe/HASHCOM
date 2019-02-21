figlet hashcom;if test -a "$1"; then n=$(cat $1|shasum -a 256|cut -c1-8);echo "/* $n */";echo "";else echo "[Info] no file or bad file...";echo "";fi
