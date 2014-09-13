# Contributing

This scripts in this repository are quite subjective. I'm not trying to build a universal set of dotfiles. Feel free to send pull requests though. Try to keep additional scripts optional by using code like:

```
if [ -f MyMagicFile ]
then
  # your code here
fi
```

or

```
if test $(which somecli)
then
  # your code here
fi
```