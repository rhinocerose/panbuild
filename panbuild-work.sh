#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P || exit )"
PANBUILD_PATH="$SCRIPTPATH"/data

INPUT="$1"
FILE_NAME="${INPUT%.*}"
STYLE=zenburn
PDF_ENGINE=xelatex
LATEX_TEMPLATE="$PANBUILD_PATH/prof-default-md.tex"
LATEX_DEPENDENCIES="$PANBUILD_PATH/pandoc-md-dependencies.tex"

pandoc -H "$LATEX_DEPENDENCIES" "$PANBUILD_PATH/prof-metadata.yaml" \
    -o "$FILE_NAME"."$2"  "$1"	\
	--pdf-engine="$PDF_ENGINE" 		\
	--highlight-style="$STYLE" 		\
	--template="$LATEX_TEMPLATE"		\
	--listings				\
    --variable subparagraph			\
