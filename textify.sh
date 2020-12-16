

arr=(/Users/Radmaster5000/Desktop/iTunesPlaylists/*)
prefix="/Users/Radmaster5000/Desktop/iTunesPlaylists/"
suffix=".m3u8"

#for FILE in /Users/Radmaster5000/Desktop/iTunesPlaylists/*; do echo $FILE; done

for ((i=0; i<${#arr[@]}; i++)); do
	if [[ ${arr[$i]} = *[[:space:]]* ]]; then
			listName=${arr[$i]// /_}
	else
		listName=${arr[$i]}
	fi

	newListName=${listName#"$prefix"}
	newListName=${newListName%"$suffix"}
	sed 's+/Users/Radmaster5000/Music/iTunes/iTunes Media/Music/++g' ${arr[$i]} > /Users/Radmaster5000/Desktop/WalkmanPlaylists/${newListName}.m3u8
	echo $newListName created
done


