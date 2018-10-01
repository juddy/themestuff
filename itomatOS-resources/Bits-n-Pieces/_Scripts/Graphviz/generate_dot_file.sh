#! /bin/bash
# reads list $2, sends output to .dot file named as $1

#set -x

NUM=0
STAMP=`date +%s`
DOTFILE=$1.$STAMP.dot
touch $DOTFILE 
inputfile=$2

clean_input_file(){
cat $inputfile | sed -e 's/ /_/g' -e 's/-/_/g' -e 's/&/_/g' -e 's/\//_/g' -e 's/\./_/g' -e 's/,/_/g' - > $inputfile.new
mv $inputfile.new $inputfile
}

init_dot_file(){
echo "digraph $1 {" > $DOTFILE
echo "graph [bgcolor=black];" >> $DOTFILE
echo "		edge [color=white];" >> $DOTFILE
echo "		nodesep=0.5;" >> $DOTFILE
echo "		ratio=[fill,center=1];" >> $DOTFILE
echo "		node[style=filled,label=""];" >> $DOTFILE
echo >> $DOTFILE
echo >> $DOTFILE
echo >> $DOTFILE
echo "node [label="$item", color=Gray, fontcolor=Black, fontsize=8, shape=box]" >> $DOTFILE
}

make_dot_entry(){
echo "$item [label="$item", color=Gray, fontcolor=Black, fontsize=8, shape=diamond]" >> $DOTFILE
echo "	$item -> $lastitem;" >> $DOTFILE
#echo "  {rank=same; $item $lastitem}" >> $DOTFILE  
echo >> $DOTFILE
NUM=$(($NUM + 1))
lastitem=$item
}

close_dot_file(){
echo "}" >> $DOTFILE
}

clean_input_file

init_dot_file

# process $inputfile
while read item 
    do make_dot_entry
    echo $item    
done < "$inputfile"

close_dot_file

echo "Wrote $DOTFILE"

echo "Generating graph.."

neato -Tpng -o $1.$STAMP.png $DOTFILE
gqview $1.$STAMP.png&

exit 0
