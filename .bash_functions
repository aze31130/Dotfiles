autocommit () {
	git add -A
	git commit -m "Autocommit-$(date +'%Y-%m-%d-%H-%M-%S')"
	git push
}

function loop() {
	cmd=$@;
	while true
	do
		echo "$COL_YELLOW""[loop] running '$cmd'""$COL_RESET";
		sh -c "$cmd";
		sleep 0.5s;
	done
}

chmax() {
        find "$1" | grep '\.sh$' | while read f
        do chmox "$f"
        done
}

#fuckify()  {
	#dd if=/dev/urandom of=$1 bs=$2 count=1
#}

beep () {
    count=1
    if [ $# -gt 0 ]
    then
        count=$1
    fi
    for i in $( seq $count )
    do
        echo -ne '\007'
        sleep 0.1s
    done
}

n () {
    # Block nesting of nnn in subshells
    if [[ "${NNNLVL:-0}" -ge 1 ]]; then
        echo "nnn is already running"
        return
    fi

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "export" and make sure not to
    # use a custom path, i.e. set NNN_TMPFILE *exactly* as follows:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The backslash allows one to alias n to nnn if desired without making an
    # infinitely recursive alias
    \nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}
