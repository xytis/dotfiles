" Read ~/.projects.vim if the file exist.

if filereadable(expand("~/.projects.vim"))
  source ~/.projects.vim
endif
