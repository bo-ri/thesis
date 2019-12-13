del *.aux *.bbl *.blg *.idx *.ilg *.ind *.toc
extractbb *.png *.jpg *.pdf
platex main
pbibtex main
platex main
platex main
dvipdfmx main