
find /Users/Radmaster5000/Desktop/iTunesPlaylists/ -name "* *.m3u8" -type f -print0 | \
	while read -d $'\0' f; do mv -v "$f" "${f// /_}"; done

arr=(/Users/Radmaster5000/Desktop/iTunesPlaylists/*)
prefix="/Users/Radmaster5000/Desktop/iTunesPlaylists/"
suffix=".m3u8"

for ((i=0; i<${#arr[@]}; i++)); do

	listName=${arr[$i]}

	newListName=${listName#"$prefix"}
	newListName=${newListName%"$suffix"}
	sed 's+/Users/Radmaster5000/Music/iTunes/iTunes Media/Music/++g' ${arr[$i]} > /Users/Radmaster5000/Desktop/WalkmanPlaylists/${newListName}.m3u8
	echo $newListName created
done


