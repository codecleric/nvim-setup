#!/usr/bin/env zsh
autounstash PATH;
autounstash VIRTUAL_ENV;

if false; then
  echo "Left autoenv: '$1' ($2)"
  echo "  PATH: '$PATH'"
  echo "  VIRTUAL_ENV: '$VIRTUAL_ENV'"
fi
