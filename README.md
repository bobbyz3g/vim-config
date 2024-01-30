# vim-config
For my vim settings. It use [vim-plug](https://github.com/junegunn/vim-plug) manage plugin.

## Config coc

1. Install node

2. Install coc plugin

3. Build coc

```
cd ~/.vim/plugged/coc.nvim/
yarn install
yarn build
```

4. Install lsp support

```
:CocInstall coc-json coc-tsserver coc-go coc-shell
```
5. Config lsp


```
:CocConfig
```

```
{
  "languageserver": {
    "go": {
      "command": "gopls",
      "rootPatterns": ["go.work", "go.mod", ".vim/", ".git/", ".hg/"],
      "filetypes": ["go"],
      "initializationOptions": {
        "usePlaceholders": true
      }
    }
  }
}
```
