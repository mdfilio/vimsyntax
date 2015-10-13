#!/bin/bash


VFILETYPE=$(find /usr/share/vim -name filetype.vim)
SYNTAXP=$(find /usr/share/vim -type d -name syntax)

cd $SYNTAXP
curl -so nginx.vim https://raw.githubusercontent.com/nginx/nginx/master/contrib/vim/syntax/nginx.vim
echo "au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* if &ft == '' | setfiletype nginx | endif" >> $VFILETYPE

