#!/bin/bash

PANBUILD_PATH=$HOME/.dotfiles/bin/pandoc

FILE_NAME=$(echo "$1" | cut -f1 -d'.')
STYLE=zenburn
PDF_ENGINE=xelatex
TEMPLATE="$PANBUILD_PATH/default-md.tex"
LATEX_DEPENDENCIES=

pandoc -H "$PANBUILD_PATH/pandoc-md.tex" \
	  "$PANBUILD_PATH/pandoc-md.yaml" -o "$FILE_NAME"."$2"  "$1".md	\
	--pdf-engine="$PDF_ENGINE" 		\
	--highlight-style="$STYLE" 		\
	--template="$TEMPLATE"			\
	--listings						\
  --variable subparagraph			\
