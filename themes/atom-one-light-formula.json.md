# atom-one-light-formula.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Ratom-one-light-formula.json atom-one-light-formula.json.md > atom-one-light-formula.json && echo 'atom-one-light-formula.json' && notify-send -a "Compilation of atom-one-light-formula.json" "" "$(date +"%Y-%m-%d") fertig" 
```


*atom-one-light-formula.json*
```json
{
   "Normal": {
      "text-color": "#000000",
      "background-color": "#f5f5f5",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false,
      "font": "Ubuntu",
      "font-size": 17 
   },
   "Important": {
      "text-color": "#0184bc",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Function": {
      "text-color": "#4078f2",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Operator": {
      "text-color": "#4078f2",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Variable": {
      "text-color": "#a0a1a7",
      "background-color": "#f5f5f5",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Parameter": {
      "text-color": "#50a14f",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Stochastic": {
      "text-color": "#986801",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Data": {
      "text-color": "#9caeeb",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Index": {
      "text-color": "#b30000",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   }
}
```
