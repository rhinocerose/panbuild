#!/bin/bash

PANBUILD_PATH=./data

FILE_NAME=$(echo "$1" | cut -f1 -d'.')
STYLE=zenburn
PDF_ENGINE=xelatex
LATEX_TEMPLATE="$PANBUILD_PATH/school-default-md.tex"
LATEX_DEPENDENCIES="$PANBUILD_PATH/pandoc-md-dependencies.tex"

pandoc -H "$LATEX_DEPENDENCIES" "$PANBUILD_PATH/school-metadata.yaml" \
    -o "$FILE_NAME"."$2" "$1".md	\
	--pdf-engine="$PDF_ENGINE" 		\
	--highlight-style="$STYLE" 		\
	--template="$LATEX_TEMPLATE"		\
	--listings				\
    --variable subparagraph			\
