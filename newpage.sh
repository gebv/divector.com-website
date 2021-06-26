#!/bin/bash


case "$1" in
  "new-page" )
    echo "Please enter page name:"
    read name
    echo "Entered name: $name"
    hugo new --kind post "$name.md"
  ;;

  "new-post" )
    echo "Please enter page name:"
    read name
    echo "Entered name: $name"
    hugo new --kind post "posts/$name.md"
  ;;

  * | "--help" )

    if [ "$1" != "--help" ]; then
      echo "Command '$1' does not exist."
      echo
    fi
    echo "Commands:"
    echo "- [new-page] - Создание страницы без архитипа."
    echo "- [new-post] - Создание поста на базе архитипа post.md."
  ;;
esac
