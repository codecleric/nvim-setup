#!/usr/bin/env zsh
if true; then
  echo "Entering autoenv: '$1' ($2)"
fi
autostash PATH;
autostash VIRTUAL_ENV;
