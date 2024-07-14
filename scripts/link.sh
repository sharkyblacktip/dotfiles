#!/usr/bin/env bash

cd "$(dirname "$0")/.."
DOTFILES=$(pwd -P)

link () {
	local src dst dir choice
	src=$1
	dst=$2
	dir=$(dirname $dst)
	echo "linking $src"

	if test -f "$dst"; then
		echo "$dst already exists. [r]eplace, [s]kip or [a]bort?"
		read -n 1 choice < /dev/tty
		echo ""

		case "$choice" in
			r )
				# replace
				rm -f "$dst"
				;;
			s )
				# skip
				return 0
				;;
			a )
				# abort
				exit 1
				;;
			* )
				# skip
				echo "no option selected, skipping"
				return 0
				;;
		esac
	fi

	mkdir -p $dir
	ln -s "$src" "$dst"
}

cat $DOTFILES/targets.conf | while read line
do
	src=$(eval echo "$line" | cut -d '=' -f 1)
	dst=$(eval echo "$line" | cut -d '=' -f 2)

	link $src $dst
done

