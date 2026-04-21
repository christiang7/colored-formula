# json-formula-theme-template.desktop
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson-formula-theme-template.desktop json-formula-theme-template.desktop.md > json-formula-theme-template.desktop && echo 'json-formula-theme-template.desktop' && chmod u+x json-formula-theme-template.desktop && ln -sf $(pwd)/json-formula-theme-template.desktop ~/.local/share/kservices5/ServiceMenus/json-formula-theme-template.desktop && ln -sf $(pwd)/json-formula-theme-template.desktop ~/.local/share/kio/servicemenus/json-formula-theme-template.desktop && notify-send -a "Compilation of json-formula-theme-template-template.desktop" "" "$(date +"%Y-%m-%d") fertig" 
```


*json-formula-theme-template.desktop*
```bash
[Desktop Entry]
Type=Service
X-KDE-ServiceTypes=KonqPopupMenu/Plugin
MimeType=inode/directory;
Actions=template-json-formula;
X-KDE-Priority=TopLevel
X-KDE-Submenu=json-theme

[Desktop Action template-json-formula]
Name=template-json-formula.sh
Icon=audio
Exec=rm ~/.config/formula/log && template-json-formula.sh %f 2>&1 | tee ~/.config/formula/log
```
