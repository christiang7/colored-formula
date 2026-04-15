# template-text-theme.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Rtemplate-text-theme.json template-text-theme.json.md > template-text-theme.json && echo 'template-text-theme.json' && notify-send -a "Compilation of template-text-theme.json" "" "$(date +"%Y-%m-%d") fertig" 
```


*template-text-theme.json*
```json
{
   "Meta": {
      "name": "",
      "version": "1.0"
   },
   "Normal": {
      "text-color": "#1f1c1b",
      "background-color": "#f5f5f5",
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
   "Index": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   }
}
```
