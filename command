#!/bin/zsh

thesis_command="docker run -it --rm -v $HOME/thesis/Thesis:/thesis myutaka3/ubuntu-latex-01 /thesis/dmklatex.bat"
abstract_command="docker run -it --rn -v $HOME/thesis/Abstract:/abstract myutaka3/ubuntu-latex-01 /abstract/dmklatex.bat"

thesis() {
  echo "compile thesis/"
  eval $thesis_command
  exit 0
}

abstract() {
  echo "compile abstract/"
  eval $abstract_command
  exit 0
}

# http://qiita.com/kitsuyui/items/4b204963e0ebec53fe3c

--help() {
  echo 'Usage:'
  compgen -A function | xargs -I % echo ' ' "$(basename "$0")" %
}

main() {
  #unset -f -- "${FUNCNAME[0]}"
  ! declare -F -- "$1" >/dev/null && --help && exit 1
  "$@"
}

main "$@"