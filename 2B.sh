hor=0
vert=0
aim=0

while IFS= read -r line;
do
   a1=`echo $line | cut -d" " -f1`
   a2=`echo $line | cut -d" " -f2`

   case $a1 in
    forward*) 
        : $((hor+=$a2))
	: $((vert+=$aim*$a2))
        ;;
    down*)
        : $((aim+=$a2))
        ;;
    up*)
        : $((aim-=$a2))
        ;;
    *)
        echo "???"
        ;;
    esac
done 

echo $(($hor*$vert))
