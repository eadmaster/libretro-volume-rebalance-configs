
DIRNAME="$(basename "$PWD")"

if [ ! -f "$DIRNAME.opt" ]; then
	echo "$0 error: $DIRNAME.opt not found. This script must be invoked from a core config dir."
	exit 1
fi

for f in *.opt; do 
	[ "$f" = "$DIRNAME.opt" ] && continue  # skip default core options
	mv "$f" "$f.bak"
	grep "_volume" "$f.bak" > "$f"
	rm "$f.bak"
	echo "#include \"$DIRNAME.opt\"" >> "$f"
done

