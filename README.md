# Znvim
fast as f***

## Required installation

#### Language Server
```
npm i -g typescript-language-server typescript vscode-langservers-extracted prettier lua-language-server
```

## FYI
type `:Keybinds` to see custome keybinds


## Troubleshoot

### E13: File Exist (add ! to ovveride)
- run `echo (nvim --cmd 'echo stdpath("data")' --cmd 'q' | tail -n 1)` to known the path
- then create a folder followed by the result above ex: `mkdir -p /home/jee/.local/share/nvim/backup`
if it not work try ask me or search on your own or ask in comunity:)
