# link in to home dir, but don't overwrite anything

# files
for s in .bashrc.sullivan- .ctags .emacs.sullivan- .gitconfig .screenrc ; do
    test -f $HOME/$s || ln -s `pwd`/$s $HOME/$s
done

# dirs
for s in .emacs.d.sullivan- ; do
    test -d $HOME/$s || ln -s `pwd`/$s $HOME/$s
done
