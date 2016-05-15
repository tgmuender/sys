#!/usr/bin/env bash

cd $(dirname $0);
pathToAlias=$(pwd)"/.alias";
include="source $pathToAlias"

if grep -Fxq "$include" ~/.zshrc
then
    exit;
else
    echo $include >> ~/.zshrc
fi
