#!/bin/sh



rm -r 01-introduction.playground
playground 01-introduction.md -p ios -s css/main.css
mkdir 01-introduction.playground/Resources/
cp resources/01-introduction/* 01-introduction.playground/Resources/