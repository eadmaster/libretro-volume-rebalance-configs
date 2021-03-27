

#echo '#include "Genesis Plus GX.opt"' | tee -a *.opt


for f in *.opt; do 
	mv "$f" "$f.bak"
	grep "pce_sound_channel_" "$f.bak" > "$f"
	rm "$f.bak"
	echo '#include "Beetle PCE Fast.opt"' >> "$f"
done

