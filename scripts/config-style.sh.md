# config-style.sh
Created 2025-02-01

- [x] **config-style.sh**
    - [x] Doing
    - [x] Backlog

## Features



## Informations
 Christian Gößl

script from one of the answers
Use config file for my shell script | AnonymousOverflow
https://overflow.adminforge.de/exchange/unix/questions/175648/use-config-file-for-my-shell-script#331965

## Main Program


*make.sh*
```bash
noweb.py -Rconfig-style.sh config-style.sh.md > config-style.sh && echo 'config-style.sh' && date && notify-send -a "Compilation of config-style.sh" "" "$(date +"%Y-%m-%d") fertig"
chmod u+x config-style.sh && ln -sf $(pwd)/config-style.sh ~/.local/bin/config-style.sh && echo 'fertig'
```


```bash
```
 

### config-style.sh

*config-style.sh*
```bash
#!/bin/bash
config_read_file() {
    (grep -E "^${2}=" -m 1 "${1}" 2>/dev/null || echo "VAR=__UNDEFINED__") | head -n 1 | cut -d '=' -f 2-;
}

config_get() {
    val="$(config_read_file ~/.config/style/config "${1}")";
    if [ "${val}" = "__UNDEFINED__" ]; then
        val="$(config_read_file ~/.config/style/config-defaults "${1}")";
    fi
    printf -- "%s" "${val}";
}

```
