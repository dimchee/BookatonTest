Book=$1
Step=$2
Pages=$(pdftk "$Book" dump_data | grep "NumberOfPages" | cut -d " " -f2)

if [ -d Parts ]
then
    echo "Parts already exists :P"
    exit 1 # fails if alread exists
else
    mkdir Parts
fi

for i in $(seq 0 $(($Pages / $Step)))
do
	poc=$(($Step * $i + 1))
	poc=$(($poc - ($i > 0 ? 1 : 0))) # make pages overlap
	end=$(($Step * ($i + 1)))
	end=$(($end < $Pages ? $end : $Pages)) # shouldn't go after last page
	name=$(printf '%04d-%04d' $poc $end) 
	file="Parts/$name.pdf"
	echo "Separating " $file
	pdftk "$Book" cat $poc-$end output $file
done
echo "Done :D"

