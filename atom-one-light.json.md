===== atom-one-light.json =====
# atom-one-light.json
Created 2026-04-14


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## json code


*make.sh*
```bash
noweb.py -Ratom-one-light.json atom-one-light.json.md > atom-one-light.json && echo 'atom-one-light.json' && notify-send -a "Compilation of atom-one-light.json" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x atom-one-light.json && ln -sf $(pwd)/atom-one-light.json ~/.local/bin/atom-one-light.json && echo 'fertig'
```

*atom-one-light.json*
```json
{
   "Normal": {
      "text-color": "#434c5e",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false,
      "font": "Ubuntu",
      "font-size": 17 
   },
   "Section": {
      "text-color": "#0184bc",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Bold": {
      "text-color": "#4078f2",
      "bold": true,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Emphasis": {
      "text-color": "#e45649",
      "bold": false,
      "italic": true,
      "underline": false,
      "strike-through": false
   },
   "Mark": {
      "text-color": "#f2ae49",
      "background-color": "#f5f5f5",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Strike": {
      "text-color": "#a0a1a7",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Link": {
      "text-color": "#a626a4",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Page-link": {
      "text-color": "#50a14f",
      "bold": false,
      "italic": false,
      "underline": true,
      "strike-through": false
   },
   "Verbatim": {
      "text-color": "#986801",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Code": {
      "text-color": "#986801",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Indent": {
      "text-color": "#9caeeb",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   },
   "Tag": {
      "text-color": "#d19a66",
      "bold": false,
      "italic": false,
      "underline": false,
      "strike-through": false
   }
}
```
