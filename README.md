# myaliases
Bash aliases and functions for various tasks, particularly file system navigation. Highlights include `cds`, a file system shortcut manager.

# setup
Clone this repository and run the `setup` script to get started. From anywhere:

```
git clone https://github.com/GiselleSerate/myaliases
cd myaliases
make
./setup
```

The `setup` script can be run without any parameters to include everything in the repository, or it can be run with parameters containing the suffixes of the files you want to use. You can run setup again later to add additional files. 
Example: `./setup nav studycloud`

For a quick summary of commands included in each file, see the [usage](https://github.com/GiselleSerate/myaliases/wiki#usage) section of the wiki.

# uninstall
The `uninstall` script will remove all traces of myaliases from your `.bash_aliases` and delete your locally set preferences. You can also use this if you want to reset your local preferences and start over. 

# using a shell that's not bash?
Most of our commands should work with your shell even if it's not bash. This repo was built on Xenial 16.04 running on bash WSL, but we are also attempting to support zsh and OSX. 

The major issues with running this repo on a different system regard the configuration file, which for bash is the `.bashrc`. On other systems, this might be a `.zshrc`, or there might be a `.bash_profile` but no `.bashrc`. If this is the case for you, open the file that runs every time you open a new terminal and paste in the following lines at the end: 
```
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi
```
If you run our uninstall scripts, we will not delete these lines out of your config file and we will not delete `.bash_aliases` (although we will delete our lines out of it). 

For more details on how usage changes based on your shell, see the [wiki](https://github.com/GiselleSerate/myaliases/wiki/Supported-Systems).

# thanks
Feel free to fork and use/modify as you please. Got some useful aliases to share? We'd love to consider your pull requests. 
