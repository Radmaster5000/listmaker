name=$1
echo $name
for FILE in /Users/Radmaster5000/Desktop/iTunesPlaylists/*; do echo $FILE; done
sed 's+/Users/Radmaster5000/Music/iTunes/iTunes Media/Music/++g' /Users/Radmaster5000/Desktop/${name}.m3u8 > /Users/Radmaster5000/Desktop/WalkmanPlaylists/${name}.m3u8
