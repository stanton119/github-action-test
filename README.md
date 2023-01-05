# Read me

Create a github action to convert notebooks to markdown files.
Markdowns are stored in a separate publish branch to keep main branch ipynb only.

Create a Jupyter notebook.
Run black
re-commit
limit to trigger only on publish folder and ipynb updates

`jupyter nbconvert test-notebook.ipynb --to markdown`