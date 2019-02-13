# README.txt

To typeset the latex file type:

latex project1.tex

Actually, you should run this command twice (or more)
to ensure that any referencing or numbering that Latex handles is done properly

to see the typeset document, type:

xdvi project1 &
or xdvi project1.dvi &

(the & puts the command in background mode so that you can continue issuing
commands without killing xdvi)

Now, use your favourite editor, like emacs, vi, pico, to change the author's name
in project1.tex.

Run it through Latex again.

Click on the xdvi window (maybe twice) and the change should appear.

Now follow the instructions in the project1.tex file.

(You may use 
dvipdf project1.dvi
to create a pdf file)
