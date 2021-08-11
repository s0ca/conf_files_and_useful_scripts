"================================
" Trucs Basiques
"================================

" Affiche les numeros de ligne
set number
" Me permet d'utiliser la souris
set mouse=a
" Evite le soucis possible de compatibilité
set nocompatible
" Syntax Highlighting baby
syntax on
" Ligne et colone en bas a droite
set ruler
" identification 'intelligente' du type de fichier
filetype indent plugin on

"===============================
" Trucs Useful
"===============================

" autocompletion
set wildmenu
" Afficher les commandes partielles en bas de l'écran
set showcmd
" Surligner la recherche
set hlsearch
" Identation auto quand aucune extension n'est spécifié
set autoindent
" fait en sorte d'avoir des couleurs visible sur un fond sombre
set background=dark

"==============================
" PATHOGENE
"==============================
execute pathogen#infect()
