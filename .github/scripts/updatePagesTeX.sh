if [ -d Src/Pages ]
then
    rm Src/Pages.tex
    for i in $(ls Src/Pages)
    do
        printf '\input{Src/Pages/%s}\n' ${i%.*} >> Src/Pages.tex
    done
else
    echo "No Src/Pages, Doing Nothing"
fi 
