# json-theme-template.desktop
Created 2026-04-21


## Description

## Journal
 - [X] Backlog
    - [ ] 
 - [X] Doing
 
## bash code


*make.sh*
```bash
noweb.py -Rjson-theme-template.desktop json-theme-template.desktop.md > json-theme-template.desktop && echo 'json-theme-template.desktop' && notify-send -a "Compilation of json-theme-template.desktop" "" "$(date +"%Y-%m-%d") fertig" && chmod u+x json-theme-template.desktop && ln -sf $(pwd)/json-theme-template.desktop ~/.local/share/kservices5/ServiceMenus/json-theme-template.desktop && ln -sf $(pwd)/json-theme-template.desktop ~/.local/share/kio/servicemenus/json-theme-template.desktop && echo 'fertig'
```


*json-theme-template.desktop*
```bash
[Desktop Entry]
Type=Service
X-KDE-ServiceTypes=KonqPopupMenu/Plugin
MimeType=inode/directory;
Actions=template-json-theme;
X-KDE-Priority=TopLevel
X-KDE-Submenu=json-theme

[Desktop Action template-json-theme]
Name=template-json-theme.sh
Icon=audio
Exec=rm ~/.config/style/log && template-json-theme.sh %f 2>&1 | tee ~/.config/style/log
```

