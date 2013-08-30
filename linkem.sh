# link in to home dir, but don't overwrite anything

# files
for s in .bashrc.sullivan- .emacs.sullivan- .screenrc ; do
    test -f $HOME/$s || ln -s `pwd`/$s $HOME/$s
done

# dirs
for s in .emacs.d ; do
    test -d $HOME/$s || ln -s `pwd`/$s $HOME/$s
done
