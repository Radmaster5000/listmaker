
find /Users/Radmaster5000/Desktop/iTunesPlaylists/ -name "* *.m3u8" -type f -print0 | \
	while read -d $'\0' f; do mv -v "$f" "${f// /_}"; done
