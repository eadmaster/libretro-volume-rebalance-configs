
DIRNAME="$(basename "$PWD")"

#if [ ! -f "$DIRNAME.opt" ]; then
	#echo "$0 error: $DIRNAME.opt not found. This script must be invoked from a core config dir."
	#exit 1
#fi

#TODO: create copies with nointro names via  "rengoodnes2nointro=renfromdats.py --rename  \"$(getgoodtoolsdatfilepath NES)\" \"$(getnointrodatfilepath - Nintendo Entertainment System)\""

for f in *.opt; do 
	[ "$f" = "$DIRNAME.opt" ] && continue  # skip default core options
	mv "$f" "$f.bak"
	grep "vol" "$f.bak" > "$f"
	rm "$f.bak"
	echo "#include \"$DIRNAME.opt\"" >> "$f"
	
	
done

