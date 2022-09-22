# Bookaton

## Quick Start
You don't need to, but i highly recommend installing [github cli](https://cli.github.com/).
First, create new github repository from [template](https://github.com/dimchee/Bookaton):
```sh
gh repo create --public --clone --template https://github.com/dimchee/Bookaton <repo_name>
```
Now you should have almost empty directory.
Add Your `.pdf` File to the root of repository, and name
it `Book.pdf`, for example like this:
```sh
mv <book_name>.pdf <repo_name>/Book.pdf
cd <repo_name>
```
Now commit changes, push, and wait for action to do it's magic
```sh
git add Book.pdf
git commit -m "Add Book.pdf"
git push
```
This will take a while, you can track progress on github actions page of repo.
Now you should have everything prepared.
Commenting LaTeX Code directly to any Issue labeled with LaTeX will
add your work to Repo, and automaticaly release final `.pdf`.

## Usage (contributor)
- You can work in any LaTeX editor you like, but it is recomended to use [overleaf](https://www.overleaf.com).
- Pick an Issue from freshly created repository issues page
- Copy this [Template](https://www.overleaf.com/read/yzxzjbfjcxjx), and write some LaTeX
- Paste your LaTeX to Issue you were working on, and everything else should happen automagicaly!
- Warning: LaTeX submission comments are detected by `\documentclass{` begining
- Warning: Don't add any definitions in Issues, we are extracting what is between 
`\begin{document}` and `\end{document}`.
