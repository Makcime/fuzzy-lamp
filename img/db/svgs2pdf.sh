# convert all svg from the current dir to pdf 
# using rsvg-convert
for i in *.svg; 
do
	n=${i%.*};
	rsvg-convert -f pdf -o $n.pdf $i
done