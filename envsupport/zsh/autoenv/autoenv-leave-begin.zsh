#!/usr/bin/env zsh
if true; then
  echo "Leaving autoenv: '$1' ($2)"
fi

if [[ -n $VIRTUAL_ENV ]]; then
  echo "  deactivate VIRTUAL_ENV: '$VIRTUAL_ENV'"
  deactivate
fi
