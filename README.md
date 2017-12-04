# myaliases
Bash aliases and functions for various things. If you're compiling C++ for Harvey Mudd's CS70 course, you will find .bash_cpp especially useful.

EDIT: Makefiles do everything .bash_cpp does, but more efficiently and better. 

# usage
Clone this repository into `~` and add the following to your .bashrc for each file you want to use:
```
if [ -f ~/myaliases/.bash_cpp ]; then
  . ~/myaliases/.bash_cpp
fi
```
When you're done, remember to run `source ~/.bashrc`. 

# thanks
Feel free to fork and use/modify as you please. 
