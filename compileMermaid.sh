#!/bin/sh

main() {
  echo "Generating Scalable Vector Graphics from Mermaid Markdown Files"

  find ./docs -name '*.mmd' -print0|xargs -0 -n 1 ./node_modules/.bin/mmdc -i
}

main "$@"