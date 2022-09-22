awk -i inplace '/\\begin{document}/{f=1; next} /\\end{document}/{f=0} f' $1
