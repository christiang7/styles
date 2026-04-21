# style-lib.sh
Created 2026-04-20


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rstyle-lib.sh style-lib.sh.md > style-lib.sh && echo 'style-lib.sh' && notify-send -a "Compilation of style-lib.sh" "" "$(date +"%Y-%m-%d") fertig" 
```


```bash
chmod u+x style-lib.sh && ln -sf $(pwd)/style-lib.sh ~/.local/bin/style-lib.sh && echo 'fertig'
```

*style-lib.sh*
```bash
#!/bin/bash
echo "start style script"
source config.sh '.config/style/config'
```
