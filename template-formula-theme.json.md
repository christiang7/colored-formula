# template-formula-theme.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Rtemplate-formula-theme.json template-formula-theme.json.md > template-formula-theme.json && echo 'template-formula-theme.json' && notify-send -a "Compilation of template-formula-theme.json" "" "$(date +"%Y-%m-%d") fertig" 
```

*template-formula-theme.json*
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
   "Important": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Function": {
      "text-color": "#1f1c1b",
      "bold": true,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Operator": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": true,
      "underline": false,
      "strike-through": false
   },
   "Variable": {
      "text-color": "#1f1c1b",
      "background-color": "#f5f5f5",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Parameter": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Stochastic": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Data": {
      "text-color": "#1f1c1b",
      "bold": false,
      "italic": false,
      "underline": true,
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
