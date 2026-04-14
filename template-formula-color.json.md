# template-formula-color.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Rtemplate-formula-color.json template-formula-color.json.md > template-formula-color.json && echo 'template-formula-color.json' && notify-send -a "Compilation of template-formula-color.json" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x template-formula-color.json && ln -sf $(pwd)/template-formula-color.json ~/.local/bin/template-formula-color.json && echo 'fertig'
```

*template-formula-color.json*
```json
{
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
