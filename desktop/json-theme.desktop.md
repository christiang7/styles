# json-theme.desktop
Created 2026-04-20


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson-theme.desktop json-theme.desktop.md > json-theme.desktop && echo 'json-theme.desktop' && notify-send -a "Compilation of json-theme.desktop" "" "$(date +"%Y-%m-%d") fertig" && chmod u+x json-theme.desktop && ln -sf $(pwd)/json-theme.desktop ~/.local/share/kservices5/ServiceMenus/json-theme.desktop && ln -sf $(pwd)/json-theme.desktop ~/.local/share/kio/servicemenus/json-theme.desktop && echo 'fertig'
```


*json-theme.desktop*
```bash
[Desktop Entry]
Type=Service
X-KDE-ServiceTypes=KonqPopupMenu/Plugin
MimeType=application/json;
Actions=json2latex-text-style;json2zim-style;
X-KDE-Priority=TopLevel
X-KDE-Submenu=json-theme

[Desktop Action json2latex-text-style]
Name=json2latex-text-style
Icon=audio
Terminal=true
Exec=rm ~/.config/style/log && json2latex-text-style.sh %f 2>&1 | tee ~/.config/style/log

[Desktop Action json2zim-style]
Name=json2zim-style
Icon=audio
Terminal=true
Exec=rm ~/.config/style/log && json2zim-style.sh %f 2>&1 | tee ~/.config/style/log

```
