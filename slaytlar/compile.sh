#!/bin/bash

pandoc -t beamer --pdf-engine=xelatex ${1}.md -o ${1}.pdf
