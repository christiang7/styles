# color-definitions
Created 2025-02-18


## Description

## Journal
 - [x] Backlog
    - [ ] 
 - [x] Doing
 
## conf code

*make.sh*
```bash
noweb.py -Rcolor-style.tex color-definitions.md > color-style.tex
noweb.py -Ratom-one-light-mod.theme color-definitions.md > atom-one-light-mod.theme
#cp atom-one-light-mod.theme ~/.config/Vorlagen/atom-one-light-mod.theme
```

## light theme

### headline

#0184bc

*headline-light*
```bash
"selected-text-color": "#0184bc",
"text-color": "#0184bc"
```

### Bold - strong
#4078f2

*bold-light*
```bash
"selected-text-color": "#4078f2",
"text-color": "#4078f2"
```

### emphasis - italic

*emphasis-light*
```bash
"selected-text-color": "#e45649",
"text-color": "#e45649"
```


### mark - both emphasis and bold

#f2ae49

#454e60
#f5f5f5


#fafafa


*mark-light*
```bash
"selected-text-color": "#f2ae49",
"text-color": "#f2ae49"
```

### strike

*strike-light*
```bash
"selected-text-color": "#a0a1a7",
"text-color": "#a0a1a7"
```

### indent

used for indents, metadata, Link Reference, Comments

#9caeeb

#737373

*indent-light*
```bash
"selected-text-color": "#737373",
"text-color": "#737373"
```

### code
#d19a66

#986801

*code-light*
```bash
"selected-text-color": "#986801",
"text-color": "#986801"
```

### link intern


*link-intern-light*
```bash
"selected-text-color": "#50a14f",
"text-color": "#50a14f"
```

### link extern

*link-extern-light*
```bash
"selected-text-color": "#a626a4",
"text-color": "#a626a4"
```

### tag
#986801

*tag-light*
```bash
"selected-text-color": "#d19a66",
"text-color": "#d19a66"
```


### important quantity
#3890b5
teal color

*important-quantity*
```bash
3890b5
```


### function - operator
#0000b3
*function-operator*
```bash
0000b3
```

### index variable
#b30000

*index*
```bash
b30000
```

### number - value
black

### coordinate - general describing variable
#808080
*general-variable*
```bash
808080
```

### stochastic variable
#86592c
*stochastic*
```bash
86592c
```

### parameter
#008000
*parameter*
```bash
008000
```

### data 
#86592c
*data*
```bash
86592c
```
#660066


### editor colors

*atom-one-light-mod.theme*
```json
{
    "custom-styles": {
        "Diff": {
            "Added line": {
                "selected-text-color": "#98c379",
                "text-color": "#98c379"
            },
            "Changed line (new)": {
                "selected-text-color": "#98c379",
                "text-color": "#98c379"
            },
            "Changed line (old)": {
                "selected-text-color": "#e06c75",
                "text-color": "#e06c75"
            },
            "Removed line": {
                "selected-text-color": "#e06c75",
                "text-color": "#e06c75"
            }
        },
        "Go": {
            "Predeclared Identifier": {
                "selected-text-color": 
                "#986801"
                ,
                "text-color": 
                "#986801"
            }
        },
        "INI Files": {
            "Assignment": {
                "selected-text-color": "#383a42",
                "text-color": "#383a42"
            },
            "Section": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            }
        },
        "JavaScript": {
            "Built-in Objects": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Function Declaration": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Function Name": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Module": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "Object Member": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Object Method (Built-in)": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            }
        },
        "Markdown": {
            "Auto-Link": {
                #*link-extern-light}}
            },
            "Blockquote": {
                #*indent-light}}
            },
            "Blockquote: Emphasis Text": {
                #*indent-light}}
            },
            "Blockquote: Link": {
                #*link-extern-light}}
            },
            "Blockquote: Normal Text": {
                #*indent-light}}
            },
            "Blockquote: Strikethrough Text": {
                #*indent-light}}
            },
            "Blockquote: Strong Text": {
                #*indent-light}}
            },
            "Blockquote: Strong-Emphasis Text": {
                #*indent-light}}
            },
            "Code": {
                #*code-light}}
            },
            "Comment": {
                #*indent-light}}
            },
            "Email": {
                #*link-extern-light}}
            },
            "Emphasis Text": {
                #*emphasis-light}}
            },
            "Fenced Code": {
                #*code-light}}
            },
            "Footnote": {
                #*link-extern-light}}
            },
            "Header H1": {
                #*headline-light}}
            },
            "Header H2": {
                #*headline-light}}
            },
            "Header H3": {
                #*headline-light}}
            },
            "Header H4": {
                #*headline-light}}
            },
            "Header H5": {
                #*headline-light}}
            },
            "Header H6": {
                #*headline-light}}
            },
            "Line Break": {
                "text-color": "#383a42"
            },
            "Link": {
                #*link-extern-light}}
            },
            "Mailto-Link": {
                #*link-extern-light}}
            },
            "Metadata": {
                #*indent-light}}
            },
            "Normal Text: Link": {
                #*link-extern-light}}
            },
            "Reference-Link": {
                #*link-intern-light}}
            },
            "Reference-Link ID": {
                #*link-intern-light}}
            },
            "Reference-Link Name": {
                #*indent-light}}
            },
            "Reference-Link Target": {
                #*indent-light}}
            },
            "Reference-Link Target: Link": {
                #*link-intern-light}}
            },
            "Reference-Link: Email": {
                #*link-extern-light}}
            },
            "Reference-Link: Link": {
                #*link-extern-light}}
            },
            "Strong Text": {
                #*bold-light}}
            },
            "Strong-Emphasis Text": {
                #*mark-light}}
            },
            "List: Strong Text": {
                #*bold-light}}
            },
            "List: Strong-Emphasis Text": {
                #*mark-light}}
            }
        },
        "Python": {
            "Builtin Function": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Import": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "String Substitution": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            }
        },
        "Rust": {
            "Lifetime": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Macro": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            },
            "Self": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Trait": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Type": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            }
        },
        "TypeScript": {
            "Built-in Objects": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Module": {
                "selected-text-color": "#a626a4",
                "text-color": "#a626a4"
            },
            "Object Member": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            },
            "Object Method (Built-in)": {
                "selected-text-color": "#0184bc",
                "text-color": "#0184bc"
            },
            "Types": {
                "selected-text-color": "#4078f2",
                "text-color": "#4078f2"
            }
        },
        "XML": {
            "Attribute": {
                "selected-text-color": "#986801",
                "text-color": "#986801"
            },
            "Element": {
                "selected-text-color": "#e45649",
                "text-color": "#e45649"
            }
        }
    },
    "editor-colors": {
        "BackgroundColor": "#fafafa",
        "BracketMatching": "#ff6e6e",
        "CodeFolding": "#e5e5e6",
        "CurrentLine": "#0c383a42",
        "CurrentLineNumber": "#383a42",
        "IconBorder": "#fafafa",
        "IndentationLine": "#626772",
        "LineNumbers": "#9d9d9f",
        "MarkBookmark": "#0404bf",
        "MarkBreakpointActive": "#8b0607",
        "MarkBreakpointDisabled": "#820683",
        "MarkBreakpointReached": "#6d6e07",
        "MarkError": "#c24038",
        "MarkExecution": "#4d4e50",
        "MarkWarning": "#ce7c2b",
        "ModifiedLines": "#e06c75",
        "ReplaceHighlight": "#ef747e",
        "SavedLines": "#98c379",
        "SearchHighlight": "#33526fff",
        "Separator": "#a6b0ba",
        "SpellChecking": "#c24038",
        "TabMarker": "#8894a6",
        "TemplateBackground": "#31363b",
        "TemplateFocusedPlaceholder": "#123723",
        "TemplatePlaceholder": "#123723",
        "TemplateReadOnlyPlaceholder": "#4d1f24",
        "TextSelection": "#e5e5e6",
        "WordWrapMarker": "#cddff1"
    },
    "metadata": {
        "name": "Atom One Light mod",
        "revision": 1
    },
    "text-styles": {
        "Alert": {
            "background-color": "#4d1f24",
            "bold": true,
            "selected-text-color": "#95da4c",
            "text-color": "#95da4c"
        },
        "Annotation": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Attribute": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "BaseN": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "BuiltIn": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Char": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Comment": {
            "italic": true,
            "selected-text-color": "#a0a1a7",
            "text-color": "#a0a1a7"
        },
        "CommentVar": {
            "italic": true,
            "selected-text-color": "#e45649",
            "text-color": "#e45649"
        },
        "Constant": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "ControlFlow": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "DataType": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "DecVal": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "Documentation": {
            "selected-text-color": "#da4453",
            "text-color": "#e45649"
        },
        "Error": {
            "selected-text-color": "#f44747",
            "text-color": "#f44747",
            "underline": true
        },
        "Extension": {
            "bold": true,
            "selected-text-color": "#4078f2",
            "text-color": "#4078f2"
        },
        "Float": {
            "selected-text-color": "#986801",
            "text-color": "#986801"
        },
        "Function": {
            "selected-text-color": "#4078f2",
            "text-color": "#4078f2"
        },
        "Import": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Information": {
            "selected-text-color": "#e46700",
            "text-color": "#c45b00"
        },
        "Keyword": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Normal": {
            "selected-text-color": "#383a42",
            "text-color": "#383a42"
        },
        "Operator": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "Others": {
            "selected-text-color": "#27ae60",
            "text-color": "#27ae60"
        },
        "Preprocessor": {
            "selected-text-color": "#a626a4",
            "text-color": "#a626a4"
        },
        "RegionMarker": {
            "background-color": "#153042",
            "selected-text-color": "#3daee9",
            "text-color": "#2980b9"
        },
        "SpecialChar": {
            "selected-text-color": "#0184bc",
            "text-color": "#0184bc"
        },
        "SpecialString": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        },
        "String": {
            "selected-text-color": "#50a14f",
            "text-color": "#50a14f"
        },
        "Variable": {
            "selected-text-color": "#e45649",
            "text-color": "#e45649"
        },
        "VerbatimString": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        },
        "Warning": {
            "selected-text-color": "#da4453",
            "text-color": "#da4453"
        }
    }
}
```

## dark theme

### wiki style

*style-dark.conf*
```bash
[TextView]
bullet_icon_size=GTK_ICON_SIZE_MENU
indent=30
tabs=None
linespacing=3
wrapped-lines-linespacing=0
font=Ubuntu 17
justify=LEFT
pixels-inside-wrap=30

[Tag strong]
weight=PANGO_WEIGHT_BOLD
foreground=#00aaff

[Tag emphasis]
style=PANGO_STYLE_ITALIC
foreground=#ff5858

[Tag mark]
foreground=#ffeb7a
background=#668685

[Tag strike]
strikethrough=False
foreground=#d08770

[Tag code]
foreground=#12df8a
family=monospace

[Tag indent]
foreground=#55aa7f

[Tag pre]
foreground=#12df8a
family=monospace
indent=20

[Tag link]
foreground=#b2ba6a
underline=PANGO_UNDERLINE_SINGLE

[Tag page-link]
foreground=#8e7cc3
underline=PANGO_UNDERLINE_SINGLE

[Tag tag]
foreground=#4e9a06

[Tag h1]
foreground=#00d9d9
underline=PANGO_UNDERLINE_SINGLE
weight=PANGO_WEIGHT_BOLD
scale=1.75

[Tag h2]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD
scale=1.52

[Tag h3]
foreground=#00c8c8
style=PANGO_STYLE_ITALIC
weight=PANGO_WEIGHT_BOLD
scale=1.32

[Tag h4]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD
scale=1.15

[Tag h5]
foreground=#00c8c8
weight=PANGO_WEIGHT_BOLD

[Tag h6]
foreground=#00c8c8

[Tag checked-checkbox]

[Tag xchecked-checkbox]

[Tag migrated-checkbox]

```
