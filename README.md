# a-hotkey

An AutoHotKey shortcut map for Windows.

This repo hosts only an ahk script file, implementing the shortcut for Windows.
Mainly on web browser, text navigation and window management.

## 简介

a-hotkey是基于[AutoHotKey](https://www.autohotkey.com/)的快捷键映射小工具。
通过映射按键，减少双手在键盘间移动，提升文字编辑、网页浏览的操作效率。

AutoHotKey本身是一个非常实用的Windows自动化工具，用户可以编写AutoHotKey脚本自定义实现按键映射、宏指令、窗体管理等功能。

本工具只是提供一种自己使用频率较高的按键映射方案。

## 方式

操作系统和应用程序的许多操作可以键盘快捷键完成，比如大众熟知的`Ctrl+C`、`Ctrl+V`，除此之外还有`Win`键和`Alt`键相关的快捷键，以及`Home`、`End`和上下左右等等。

然而这些按键比较分散，手臂的移动缓慢，而且找寻按键位置也花费时间，实用性上还不一定快于鼠标。
将快捷键操作映射到以`Alt`键为主，`CapsLock`键次之的快捷键组合，（一只手的拇指基本上就放在`Alt`键上，靠手指移动），就……就……用着还挺方便的。

## 列表

事实上，代码文件 [a.ahk](a.ahk) 本身已经可以解释各个映射按键的功能，不过还是在此罗列，作为参考。
（这一罗列可比代码本身多太多了，这也是为何开始没打算写Readme的原因）

按键 | 对应原始快捷键 | 备注
--- | --- | ---
**光标移动** | | 
Alt + h | ← | 左
Alt + l | → | 右
Alt + j | ↓ | 下
Alt + k | ↑ | 上
Alt + a | Home | 光标移动至行首
Alt + e | End | 光标移动至行尾
Alt + f | Ctrl + → | 光标向前移动一个词组
Alt + b | Ctrl + ← | 光标向后移动一个词组
**文字选中** | | 
Alt + Shift + h | Shift + ← | 光标左移并选中途经文字
Alt + Shift + l | Shift + → | 光标右移并选中途经文字
Alt + Shift + j | Shift + ↓ | 光标下移并选中途经文字
Alt + Shift + k | Shift + ↑ | 光标上移并选中途经文字
Alt + Shift + a | Shift + Home | 光标移至行首并选中当前光标与行首间文字
Alt + Shift + e | Shift + End | 光标移至行尾并选中当前光标与行尾间文字
Alt + t | Ctrl + a | 全选
**文字编辑** | | 
Alt + u | Del | 删除（光标后文字）
Alt + ; | Backspace | 退格键，删除光标前文字
CapsLock + ; | Ctrl + Backspace | 删除光标前一个词组
Alt + d | End; Shift + Home; Del | 删除当前行
Alt + Enter | End; Enter | 向下创建新一行并移动
Alt + Shift + Enter | Home; Enter; ↑ | 向上创建新一行并移动
**常用功能** | |
Alt + s | Ctrl + s | 保存
Alt + c | Ctrl + c | 复制
Alt + v | Ctrl + v | 粘贴
Alt + x | Ctrl + x | 剪切
Alt + z | Ctrl + z | 撤销
Alt + r | Ctrl + y | 反撤销
Alt + y | End; Shift + Home; Ctrl + c | 选中并复制当前行
Alt + Shit + y | End; Shift + Home; Ctrl + c; Backspace | 复制后删除当前行
Alt + p | PageUp | 上一页（光标移动）
Alt + n | PageDown | 下一页（光标移动）
Alt + Shift + p | Ctrl + ↑ | 垂直滚动条上移（上一页，光标不移动）
Alt + Shift + n | Ctrl + ↓ | 垂直滚动条下移（下一页，光标不移动）
