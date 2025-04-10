## Znvim
fast as f***

### Required installation

```
npm i -g prettier @johnnymorganz/stylua-bin
```
```
npm i -g typescript-language-server typescript
```
```
typescript-language-server --stdio
```
or see [this](https://github.com/typescript-language-server/typescript-language-server)

## FYI
type `:Keybinds` to see custome keybinds


## Error 

### E13: File Exist (add ! to ovveride)
- run `echo (nvim --cmd 'echo stdpath("data")' --cmd 'q' | tail -n 1)` to known the path
- then create a folder followed by the result above ex: `mkdir -p /home/jee/.local/share/nvim/backup`
if it not work try ask me or search on your own or ask in comunity:)
