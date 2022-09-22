if [ -z "$(gh issue list -l LaTeX -S $1)" ]
then
	gh issue create --title "$1" --body "[Zadate stranice](../blob/main/Parts/$1.pdf)" --label LaTeX \
        && echo "Created Issue $1 :D"
else
    echo "Issue $1 already exists!" 
fi
