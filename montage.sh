DIRS="ModernGlassBlue-0.91.themed
itomatOS-GTK-Pixmap3
itomatOS-icons-Vol2a-64px
Abceba.b
itomatOS-resources/Bits-n-Pieces/itomatOS-icons-TO_BE_ADDED
itomatOS-resources/Bits-n-Pieces/Wallpapers
itomatOS-resources/Bits-n-Pieces/_rox-icons
itomatOS-resources/Bits-n-Pieces/_rox-icons/MIME-icons
itomatOS-resources/Bits-n-Pieces/itomatOS-icons
itomatOS-resources/Bits-n-Pieces/itomatOS-icons-2.0.rc1
itomatOS-resources/Bits-n-Pieces/itomatOS-icons-2.0.rc1/rox-filer-icons
itomatOS-GTK-2008
itomatOS-2.0
itomatOS-2.0/cursors
itomatOS-GTK-Pixmap6
itomatOS-GTK-Pixmap6/gtk-2.0
itomatOS-wmaker-rc3
itomatOS-Cursors-rc1
itomatOS-Cursors-rc1/cursors
itomatOS-icons-Vol2a-128px
itomatOS-Eterm-theme
itomatOS-icons-Vol2a-48px"

for dir in $DIRS
	do montage -verbose -label '%f' -font Helvetica -pointsize 10 -background '#ffffff' -fill 'gray' -define png:size=200x200 -geometry 200x200+2+2 -auto-orient $dir/*.png $dir.png
	done
