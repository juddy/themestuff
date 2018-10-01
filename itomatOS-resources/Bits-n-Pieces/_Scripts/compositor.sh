for icon in ../48/*png
	do
		convert -combine $icon Tile.png "$icon"Tile.png
		echo "converting '$icon'"

	echo '<img style= alt="$icon" src="'$icon'Tile.png"><br>' >> itomatOSTiles.htm

done
	
