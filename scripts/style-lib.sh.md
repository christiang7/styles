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
source config.sh '.config/style/config'
```

style_path() {
    val="$(yq -oy -p toml ".${1}" ~/.config/style/config)";
    if [ "${val}" = "__UNDEFINED__" ]; then
        val="$(yq -oy -p toml ".${1}" ~/.config/style/config-defaults)";
    fi
    printf -- "%s" "${val}";
}