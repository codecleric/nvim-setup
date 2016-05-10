#!/usr/bin/env zsh
#echo "Entering $PWD end"
if [[ -f pyvenv.cfg ]] && [[ -f ./bin/activate ]]; then
  # this looks like a Python 3 venv environment
  source ./bin/activate
  echo "  activate VIRTUAL_ENV: '$VIRTUAL_ENV'"
fi

if [[ -f package.json ]] && [[ -d ./node_modules/.bin ]]; then
  # this looks like a nodejs environment
  echo "  node context, prepending './node_modules/.bin' to the path"
  export PATH=$PWD/node_modules/.bin:$PATH
fi

if false; then
  echo "Entered autoenv: '$1' ($2)"
fi
