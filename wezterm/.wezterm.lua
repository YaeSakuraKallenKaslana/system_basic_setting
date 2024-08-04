-- 添加wezterm pull in the wezterm API
local wezterm = require 'wezterm'
local config = {}

-- 创建wezterm配置构建器
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- 主题 
-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Bamboo Multiplex'
-- 初始大小
config.initial_cols = 96
config.initial_rows = 24

-- 关闭时不进行确认
config.window_close_confirmation = 'NeverPrompt'

-- 字体
config.font = wezterm.font('FiraCode Nerd Font',{weight = 'Bold', italic = false})
-- 大小
config.font_size = 13.3
-- config.font = wezterm.font_with_fallback {
--   'Fira Code',
--   'DengXian',
-- }


-- 配色
config.colors = {
    -- 设置tab
    tab_bar = {
        -- The color of the strip that goes along the top of the window
        -- (does not apply when fancy tab bar is in use)
        background = '#0b0022',

        -- 选中tab的相关设置
        active_tab = {
            -- The color of the background area for the tab
            bg_color = 'blue',
            -- The color of the text for the tab
            fg_color = '#c0c0c0',

            -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
            -- label shown for this tab.
            -- The default is "Normal"
            intensity = 'Normal',

            -- Specify whether you want "None", "Single" or "Double" underline for
            -- label shown for this tab.
            -- The default is "None"
            underline = 'None',

            -- Specify whether you want the text to be italic (true) or not (false)
            -- for this tab.  The default is false.
            italic = true,

            -- Specify whether you want the text to be rendered with strikethrough (true)
            -- or not for this tab.  The default is false.
            strikethrough = false,
        },

        -- 未选中tab
        inactive_tab = {
            bg_color = '#1b1032',
            fg_color = '#808080',

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over inactive tabs
        -- 移动鼠标到未选中的tab上展示的效果
        inactive_tab_hover = {
            bg_color = '#3b3052',
            fg_color = '#909090',
            italic = true,

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `inactive_tab_hover`.
        },

        -- The new tab button that let you create new tabs
        -- 创建新的tab按钮的配置
        new_tab = {
            bg_color = '#1b1032',
            fg_color = '#808080',

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab`.
        },

        -- You can configure some alternate styling when the mouse pointer
        -- moves over the new tab button
        -- 移动鼠标到新的创建tab按钮上的样式
        new_tab_hover = {
            bg_color = '#3b3052',
            fg_color = '#909090',
            italic = true,

            -- The same options that were listed under the `active_tab` section above
            -- can also be used for `new_tab_hover`.
        },
    },


    -- 文本颜色
    foreground = 'silver',
    -- 背景颜色
    background = 'black',
    -- 鼠标光标颜色
    cursor_bg = '#52ad70',
    -- 光标文本颜色
    cursor_fg = 'black',
    -- Bar or Underline.
    cursor_border = '#52ad70',
    -- the foreground color of selected text
    selection_fg = 'black',
    -- the background color of selected text
    selection_bg = '#fffacd',

    split = '#444444',

    -- 滚动条
    scrollbar_thumb = '#222222',

    ansi = {
        'black',
        'maroon',
        'green',
        'olive',
        'navy',
        'purple',
        'teal',
        'silver',
    },
    brights = {
        'grey',
        'red',
        'lime',
        'yellow',
        'blue',
        'fuchsia',
        'aqua',
        'white',
    },
    indexed = { [136] = '#af8700' },
    compose_cursor = 'orange',
    copy_mode_active_highlight_bg = { Color = '#000000' },
    copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
    copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
    copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },

    quick_select_label_bg = { Color = 'peru' },
    quick_select_label_fg = { Color = '#ffffff' },
    quick_select_match_bg = { AnsiColor = 'Navy' },
    quick_select_match_fg = { Color = '#ffffff' },
}
--local materia = wezterm.color.get_builtin_schemes()['Material Darker (base16)']
--materia.scrollbar_thumb = '#cccccc' -- 更明显的滚动条
--config.colors = materia

-- 不活跃的pane设置
-- config.inactive_pane_hsb = {
--     saturation = 0.9,
--     brightness = 0.8,
-- }

-- 透明背景
config.window_background_opacity = 0.8
-- 取消 Windows 原生标题栏
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- 滚动条尺寸为 15 ，其他方向不需要 pad
config.window_padding = { left = 0, right = 8, top = 0, bottom = 0 }
-- 启用滚动条
config.enable_scroll_bar = true

-- 设置背景图片
-- config.window_background_image = 'D:/PersonDocument/壁纸/1709643633093.jpg'

-- config.window_background_image_hsb = {
--     brightness = 0.1,
--     hue = 1.0,
--     saturation = 1.0,
-- }
-- 设置打开软件之后默认展示的launch_menu
config.default_prog = {'C:/Users/Elysia/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe'}
-- 设置打开的终端是否使用wsl,xx的值为 wsl -l -v查询处理的
-- config.default_domain = 'WSL: xx'
-- 启动菜单的一些启动项
config.launch_menu = {
  {
    label = 'PowerShell',
    args =
    {
        'C:/Users/Elysia/AppData/Local/Microsoft/WindowsApps/Microsoft.PowerShell_8wekyb3d8bbwe/pwsh.exe'
    },
    -- 设置打开之后的工作目录
    cwd = "/dc"
 },
  --{ label = 'CMD',             args = { 'cmd.exe' }, },
}

-- 取消所有默认的热键
config.disable_default_key_bindings = true

-- 创建接收wezterm操作的变量
local act = wezterm.action
-- 定义快捷键
config.keys = {
  -- Ctrl+Shift+Tab 遍历 tab
  { key = 'Tab', mods = 'SHIFT|CTRL', action = act.ActivateTabRelative(1) },
  -- F11 切换全屏
  { key = 'F11', mods = 'NONE', action = act.ToggleFullScreen },
  -- Ctrl+Shift++ 字体增大
  { key = '+', mods = 'SHIFT|CTRL', action = act.IncreaseFontSize },
  -- Ctrl+Shift+- 字体减小
  { key = '_', mods = 'SHIFT|CTRL', action = act.DecreaseFontSize },
  -- Ctrl+Shift+C 复制选中区域
  { key = 'C', mods = 'SHIFT|CTRL', action = act.CopyTo 'Clipboard' },
  -- Ctrl+Shift+N 新窗口
  { key = 'N', mods = 'SHIFT|CTRL', action = act.SpawnWindow },
  -- Ctrl+Shift+T 新 tab
  { key = 'T', mods = 'SHIFT|CTRL', action = act.ShowLauncher },
  -- Ctrl+Shift+Enter 显示启动菜单
  { key = 'Enter', mods = 'SHIFT|CTRL', action = act.ShowLauncherArgs { flags = 'FUZZY|TABS|LAUNCH_MENU_ITEMS' } },
  -- Ctrl+Shift+V 粘贴剪切板的内容
  { key = 'V', mods = 'SHIFT|CTRL', action = act.PasteFrom 'Clipboard' },
  -- Ctrl+Shift+W 关闭 tab 且不进行确认
  { key = 'W', mods = 'SHIFT|CTRL', action = act.CloseCurrentTab{ confirm = false } },
  -- Ctrl+Shift+PageUp 向上滚动一页
  { key = 'PageUp', mods = 'SHIFT|CTRL', action = act.ScrollByPage(-1) },
  -- Ctrl+Shift+PageDown 向下滚动一页
  { key = 'PageDown', mods = 'SHIFT|CTRL', action = act.ScrollByPage(1) },
  -- Ctrl+Shift+UpArrow 向上滚动一行
  { key = 'UpArrow', mods = 'SHIFT|CTRL', action = act.ScrollByLine(-1) },
  -- Ctrl+Shift+DownArrow 向下滚动一行
  { key = 'DownArrow', mods = 'SHIFT|CTRL', action = act.ScrollByLine(1) },
}

return config
