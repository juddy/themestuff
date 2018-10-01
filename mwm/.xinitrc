#Load your X Resource defaults, if you have them...
#
if [ -f $HOME/.Xdefaults ]; then
  xrdb -merge $HOME/.Xdefaults
fi
# Set background
#habak -ms /home/itomato/desk-gray.png&
# Set the background color
xsetroot -solid darkgray

# Start the app panel
perlpanel&

#wmacpi
#wmnet
xscreensaver -nosplash&

unclutter -root&

# watch the output from mwm via strace/ltrace
root-tail -fn -adobe-new\ century\ schoolbook-*-*-*-*-14-*-*-*-*-*-*-* --color white  --shade --noflicker /home/itomato/mwm.out&
#root-tail --color gray50 --noflicker /home/itomato/mwm.out&


# Start the window manager.  *I* like to run fvwm if it's there,
# falling back to mwm if that fails.  If you want to just run mwm,
# delete EVERYTHING below except the line that says "exec mwm"
mwmdebug(){
Xdialog --msgbox "mwm error." 0 0
}

#exec strace mwm 2>> /home/itomato/mwm.out
#strace -fv -e trace=signal -o /home/itomato/mwm.out mwm&
mwm
#ltrace mwm 2>> /home/itomato/mwm.out
trap mwmdebug SIGSEGV 
