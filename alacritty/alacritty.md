# alacritty配置
## 1.添加配置文件
```shell
# Window下
# C:\Users\用户名\AppData\Roaming\alacritty下添加alacritty.yml文件

```

```yaml
window:
  dimensions:
    colums: 120
    rows: 90
  opacity: 0.8
  padding:
    x: 0
    y: 0
  dynamic_padding: false
  decorations: none
  # Windowed,Maximized,Fullscreen
  startup_mode: Maximized




# 字体设置
font:
  size: 16
  normal:
    family: Fira Code
    style: Regular
  bold:
    family:  Fira Code
    style: Bold
  italic:
    family:  Fira Code
    style: Italic

  # 设置每一个字符的间距,y是行距,x是字符距离
  offset:
    x: 0
    y: 1
  glyph_offset:
    x: 0
    y: 0


scrolling:
  history: 10000

# 鼠标设置
mouse:
  double_click: { threshold: 300}
  triple_click: { threshold: 300}
  hide_when_typing: true


hints:
    enabled:
      - regex: "(magnet:|mailto:|gemini:|gopher:|https:|http:|news:|file:|git:|ssh:|ftp:)[^\u0000-\u001F\u007F-\u009F<>\"\\s{-}\\^⟨⟩`]+"
        command: xdg-open
        post_processing: true
        mouse:
            enabled: true
            mods: Control

draw_bold_text_with_bright_colors: true
cursor:
  style: underline
  unfocuset_hollow: true

# 实时加载配置
live_config_reload: true

# 输入中文乱码的解决配置
key_bindings:
  - { key: Back, action:  ReceiveChar}

# 颜色设置(pencil_light)
# colors:
#   primary:
#     background: '0xf1f1f1'
#     foreground: '0x424242'
#   normal:
#     black:   '0x212121'
#     red:     '0xc30771'
#     green:   '0x10a778'
#     yellow:  '0xa89c14'
#     blue:    '0x008ec4'
#     magenta: '0x523c79'
#     cyan:    '0x20a5ba'
#     white:   '0xe0e0e0'
#   bright:
#     black:   '0x212121'
#     red:     '0xfb007a'
#     green:   '0x5fd7af'
#     yellow:  '0xf3e430'
#     blue:    '0x20bbfc'
#     magenta: '0x6855de'
#     cyan:    '0x4fb8cc'
#     white:   '0xf1f1f1'
# 颜色(pencil_dart)
colors:
  primary:
    background: '0x212121'
    foreground: '0xf1f1f1'
  normal:
    black:   '0x212121'
    red:     '0xc30771'
    green:   '0x10a778'
    yellow:  '0xa89c14'
    blue:    '0x008ec4'
    magenta: '0x523c79'
    cyan:    '0x20a5ba'
    white:   '0xe0e0e0'
  bright:
    black:   '0x818181'
    red:     '0xfb007a'
    green:   '0x5fd7af'
    yellow:  '0xf3e430'
    blue:    '0x20bbfc'
    magenta: '0x6855de'
    cyan:    '0x4fb8cc'
    white:   '0xf1f1f1'


# - `action`: 执行预定义的操作
#
#   - ToggleViMode: 开启/关闭 Vi 模式
#   - SearchForward: 向前搜索
#   - SearchBackward: 向后搜索
#   - Copy: 复制
#   - Paste: 粘贴
#   - IncreaseFontSize: 增加字号
#   - DecreaseFontSize: 减小字号
#   - ResetFontSize: 重置字号
#   - ScrollPageUp: 向上翻一页
#   - ScrollPageDown: 向下翻一页
#   - ScrollHalfPageUp: 向上翻半页
#   - ScrollHalfPageDown: 向下翻半页
#   - ScrollLineUp: 向上滚动一行
#   - ScrollLineDown: 向下滚动一行
#   - ScrollToTop: 滚动到顶部
#   - ScrollToBottom: 滚动到底部
#   - ClearHistory: 清空滚动缓冲区
#   - Hide: 隐藏窗口
#   - Minimize: 最小化
#   - Quit: 退出
#   - ToggleFullscreen: 在全屏/当前模式下切换
#   - SpawnNewInstance: 启动一个新的 Alacritty
#   - ClearLogNotice: 清 UI 上的 warning 和 error 的 notice
#   - ClearSelection: 清空当前选中
#   - ReceiveChar: 不执行任何动作，将字符输入
#   - None: 不执行任何动作，并且拦截掉
#鼠标绑定
mouse_bindings:
  - { mouse: Right, action: Copy}
  - { mouse: Right, mods: Control, action: Paste}
  - { mouse: Middle, action: Paste}
  - { mouse: Middle, mods: Control, action: PasteSelection}
  
key_bindings:
  - { key: V,              mods: Control|Shift,                   action: Paste            }
  - { key: C,              mods: Control|Shift,                   action: Copy             }
  - { key: H,             action: Minimize   }
  
# 停止进程用Control+Shift+C

# 打开时默认的shell
# Default:
#   - (macOS) /bin/bash --login
#   - (Linux/BSD) user login shell
#   - (Windows) powershell
shell:
  program: C:\Users\a1925\AppData\Local\Microsoft\WindowsApps\Microsoft.PowerShell_8wekyb3d8bbwe\pwsh.exe
# 打开的时候默认进入的目录
working_directory: D:\

bell:
  animation: EaseOutExpo
```

