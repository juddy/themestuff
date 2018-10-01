for file in *
do      
        if [ ! -f "$file" ]
        then
         file=$defaultdir/$file
         [ -f "$file" ] || continue
        fi      
                
                case $file in 
			
		
		*.tar.gz)	
				

				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;

				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/CompressedFile-TARGZ.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;

		*.compressed)						
				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;

				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/compress--48.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
				
		*.gz)						
				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;

				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/CompressedFile-GZ.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
		*.tar)						
				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;

				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/CompressedFile-TAR.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
				
		*.Z)						
				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;

				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/z-48.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
		*.sh)						
				date +%D > "$file"_date.out;
				head -c 128 $file > "$file".head
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;
					
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 9 \
					-fill black -rotate 360 -annotate +24+64 `cat "$file".head` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file".head` \
					-fill white-rotate 360 -annotate +25+65 `cat "$file".head`  \
					-trim +repage "$file"_head.png ;
				
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/NSMonitor_Shell48.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<img style= alt="`cat "$file".head`" src="'$file'_head.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
		*.txt|*TXT)						
				head $file -c 512 > "$file".head;
				date +%D > "$file"_date.out;
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_title.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;
				
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<a href='$file' target=_blank> <img src="_FileTypes/Document-Text-TXT.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>'>> files.htm;
				cat "$file".head >> files.htm;
				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
		
				
		*.jpg|*jpeg|*JPG)						
				date +%D > "$file"_date.out;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 24 \
					-fill white -rotate 360 -annotate +24+64 `echo "$file"` \
					-fill black -rotate 360 -annotate +26+66 `echo "$file"`  \
					-fill gray -rotate 360 -annotate +25+65 `echo "$file"` \
					-trim +repage "$file"_dateLG.png ;
				
				convert -size 320x100 xc:transparent -font /usr/share/fonts/truetype/freefont/FreeSansBold.ttf -pointsize 11 \
					-fill white -rotate 360 -annotate +24+64 `cat "$file"_date.out` \
					-fill gray -rotate 360 -annotate +25+65 `cat "$file"_date.out` \
					-fill black -rotate 360 -annotate +25+65 `cat "$file"_date.out`  \
					-trim +repage "$file"_date.png ;
					
				convert $file -antialias -thumbnail 256x +profile "*" "$file"_thumb.png;


				echo '<hr noshade="noshade" style="height: 8px; width: 256px; margin-left: 0px; margin-right: auto;">
				<img style= alt="`date`" src="'$file'_dateLG.png"><br>
				<a href='$file' target=_blank> <img src="'$file'_thumb.png"></a><br>
				<img style= alt="$file" src="'$file'_title.png"><br>
				<img style= alt="`date`" src="'$file'_date.png"><br>
				<hr noshade="noshade" style="height: 8px; width: 512px; margin-left: 0px; margin-right: auto;">
				<br>' >> files.htm;;
	esac
done
