
# 1. Install Oh my posh
# https://ohmyposh.dev/docs/installation/windows

# 2. Create .theme.omp.json
{
  "$schema": "https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/schema.json",
  "palette": {
    "white": "#f7f7f7",
    "black": "#111111"
  },
  "blocks": [
    {
      "type": "prompt",
      "alignment": "left",
      "newline": true,
      "segments": [
        {
          "background": "transparent",
          "foreground": "p:white",
          "style": "plain",
          "template": "\u250c",
          "type": "text"
        },
        {
          "background": "#464646",
          "foreground": "p:white",
          "properties": {
            "windows": "\ue62a",
            "linux": "\uf17c",
            "ubuntu": "\uf31b",
            "macos": "\uf179"
          },
          "style": "plain",
          "template": " {{.Icon}}{{if .WSL}} (WSL){{end}}\u2800",
          "type": "os"
        },
        {
          "background": "#ffe093",
          "foreground": "p:black",
          "style": "plain",
          "template": " \uf2c0 {{.HostName}}\ue0bd{{.UserName}}\u2800",
          "type": "session"
        },
        {
          "background": "#ffffd6",
          "foreground": "p:black",
          "properties": {
            "branch_icon": " \ue0a0 "
          },
          "style": "plain",
          "template": "{{.HEAD}}\u2800",
          "type": "git"
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "right",
      "segments": [
        {
          "background": "transparent",
          "foreground": "#b3ffde",
          "properties": {
            "style": "austin",
            "threshold": 0
          },
          "style": "plain",
          "template": "{{.FormattedMs}}",
          "type": "executiontime"
        },
        {
          "background": "transparent",
          "foreground": "#b3ffde",
          "properties": {
            "time_format": "02/01/06 15:04"
          },
          "style": "plain",
          "template": "<p:white> · </>{{.CurrentDate | date .Format}}",
          "type": "time"
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "left",
      "newline": true,
      "segments": [
        {
          "background": "transparent",
          "foreground": "p:white",
          "properties": {
            "folder_icon": "\uf07b",
            "folder_separator_template": "<#93d0ff> \u00bb </>",
            "home_icon": "\ueb06",
            "style": "agnoster"
          },
          "style": "plain",
          "template": "<p:white>\u2514</><#93d0ff>[</> {{.Path}} <#93d0ff>]</>",
          "type": "path"
        }
      ]
    },
    {
      "type": "prompt",
      "alignment": "left",
      "newline": true,
      "segments": [
        {
          "background": "transparent",
          "foreground": "#81ff91",
          "foreground_templates": ["{{if gt .Code 0}}#ff3030{{end}}"],
          "properties": {
            "always_enabled": true
          },
          "style": "plain",
          "template": "\u276f",
          "type": "status"
        }
      ]
    }
  ],
  "console_title_template": "{{if .Root}}[root] {{end}}{{.Shell}} in <{{.Folder}}>",
  "final_space": true,
  "version": 2
}

# 3. configure .zshrc
eval "$(oh-my-posh init zsh --config  ~/.mytheme.omp.json)"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

