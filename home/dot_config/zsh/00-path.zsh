typeset -U path
path=(
  "$HOME/.deno/bin"             # add deno programs
  "/usr/lib/qt6/bin"            # qt programs, ex: svgtoqml
  "$HOME/flutter/bin"           # flutter
  "$HOME/Android/Sdk/"          # android sdk
  $path
)
