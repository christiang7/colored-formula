# json-formula-theme.desktop
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson-formula-theme.desktop json-formula-theme.desktop.md > json-formula-theme.desktop && echo 'json-formula-theme.desktop' && chmod u+x json-formula-theme.desktop && ln -sf $(pwd)/json-formula-theme.desktop ~/.local/share/kservices5/ServiceMenus/json-formula-theme.desktop && ln -sf $(pwd)/json-formula-theme.desktop ~/.local/share/kio/servicemenus/json-formula-theme.desktop && notify-send -a "Compilation of json-formula-theme.desktop" "" "$(date +"%Y-%m-%d") fertig" 
```


*json-formula-theme.desktop*
```bash
[Desktop Entry]
Type=Service
X-KDE-ServiceTypes=KonqPopupMenu/Plugin
MimeType=application/json;
Actions=json2latex-formula-theme;
X-KDE-Priority=TopLevel
X-KDE-Submenu=json-theme

[Desktop Action json2latex-formula-theme]
Name=json2latex-formula-theme.sh
Icon=audio
Terminal=true
Exec=rm ~/.config/formula/log && json2latex-formula-theme.sh  %f 2>&1 | tee ~/.config/formula/log
```
