# formula-lib.sh
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rformula-lib.sh formula-lib.sh.md > formula-lib.sh && echo 'formula-lib.sh' && notify-send -a "Compilation of formula-lib.sh" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x formula-lib.sh && ln -sf $(pwd)/formula-lib.sh ~/.local/bin/formula-lib.sh && echo 'fertig'
```

*formula-lib.sh*
```bash
#!/bin/bash
source config.sh '.config/formula/config'
```
