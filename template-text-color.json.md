===== template-text-color.json =====
# template-text-color.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Rtemplate-text-color.json template-text-color.json.md > template-text-color.json && echo 'template-text-color.json' && notify-send -a "Compilation of template-text-color.json" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x template-text-color.json && ln -sf $(pwd)/template-text-color.json ~/.local/bin/template-text-color.json && echo 'fertig'
```

*template-text-color.json*
```json
{
   "Normal": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false,
      "font": "Ubuntu",
      "font-size": 17 
   },
   "Section": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Bold": {
      "text-color": "#1f1c1b",
      "bold": true,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Emphasis": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": true,
      "underline": false,
      "strike-through": false
   },
   "Mark": {
      "text-color": "#1f1c1b",
      "background-color": "#f5f5f5",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Strike": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Link": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Page-link": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Verbatim": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Code": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Indent": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Tag": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
}
```
