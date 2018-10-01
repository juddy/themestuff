


for file in "$@"
do      
        if [ ! -f "$file" ]
        then
         file=$defaultdir/$file
         [ -f "$file" ] || continue
        fi      
                
                case $file in 
			
		
		*.tar.gz)						
				date > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 '"$file"' \
					-fill gray -rotate 360 -annotate +25+65 '"$file"' \
					-fill black -rotate 360 -annotate +25+65 '"$file"' \
					-trim +repage "$file"_title.png ;

				text2gif -t "`cat "$file"_date.out`" -c 200 200 200 > "$file"_date.gif ; convert -fill white -draw 'text 5,12 "'$file'_head.out"' "$file"_head.gif ;
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<img style= alt="'$file'" src="'$file'_title.gif"><br>
				<a href='$file' target=_blank> <img src="CompressedFile-TARGZ.png"></a><br>
				<img style= alt="`date`" src="'$file'_date.gif"><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
				
		*eps)	head -c 128 $file > "$file"_head.out ; identify -ping $file > "$file"_ident.out ; convert $file -antialias -sample 256x256 +profile "*" "$file"_thumb.png ;					
				date > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 '"$file"' \
					-fill gray -rotate 360 -annotate +25+65 '"$file"' \
					-fill black -rotate 360 -annotate +25+65 '"$file"' \
					-trim +repage "$file"_title.png ;

				text2gif -t "`cat "$file"_date.out`" -c 200 200 200 > "$file"_date.gif ; convert -fill white -draw 'text 5,12 "'$file'_head.out"' convert_title_background.gif "$file"_head.gif ; text2gif -t "`echo "$file"`" -c 255 168 0 > "$file"_nametag.gif;
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<img style= alt="'$file'" src="'$file'_title.gif"><br>
				<a href='$file' target=_blank> <img src="'$file'_thumb.png"></a>
				<a href='$file' target=_blank> <img src="examine.png"></a><br>
				<img style= alt="`echo '$file'_ident.out`" src="'$file'_ident.gif"><br>
				<img style= alt="`date`" src="'$file'_date.gif"><br>
				<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<br>' >> eps.htm;;
				
		*txt)   text2gif -t "`echo "$file"`" > "$file"_nametag.gif;
				head -c 512 $file > "$file"_headlines.out;
				date > "$file"_date.out;
 	
				cat "$file"_date.out | convert -background gray  -fill white  -font /usr/share/fonts/truetype/msttcorefonts/trebucbd.ttf -pointsize 10 \
				-size 320x  -gravity Center caption:@-\
				"$file"_date.gif;
	
				cat "$file"_headlines.out | convert -background gray  -fill white  -font /usr/share/fonts/truetype/msttcorefonts/trebuchet.ttf -pointsize 10 \
				-size 320x  -gravity Center caption:@-\
				"$file"_headlines.gif;
	
				set $page_title "$file"_date.out;

				echo '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
				<html>
				<head>
				<meta content="text/html; charset=ISO-8859-1"
				http-equiv="content-type">
				<title>`echo '$file'`</title>
				</head>
				<body alink="#990000" vlink="#ff9900" link="#ff6600" style="color: rgb(204, 204, 204); background-color: rgb(0, 0, 0);">
				<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				' >> "`echo $page_title`".htm;
				touch "$page_title".htm;
				cat "$file"_headlines.out >> headlines.htm ;
				echo '<a href="$page_title".htm target=_blank> <img src="$file"_headlines.gif"></a><br>' >> headlines.htm;
				cat "$file"_date.out | convert button_base.gif -size 320x -font /usr/share/fonts/truetype/msttcorefonts/trebucbd.ttf -pointsize 12 \
				-fill white  -stroke black  caption:@- \
				"$file"buttons.png;
				
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<img style= alt=""$file"" src=""$file"buttons.png"><br>
				<a href="$file".htm target=_blank> <img src=""$file"_headlines.gif"></a><br>
					`cat $file`<br>
					<img style= alt="`date`" src="'$file'_date.gif"><br>
					<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
					<br>' >> "$page_title".htm;;
					
	esac
done
