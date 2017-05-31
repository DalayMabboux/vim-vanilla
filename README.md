# vim-vanilla
Base Docker template for dockerized vim.

# Usage
Navigate to the directory you like to edit a file, then enter
```
docker run -it --rm -v "$(pwd):/code" -w "/code" -u $UID:$GID vim-elm
```
