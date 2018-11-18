# VisualStudio(2015以降)
- - -


### Font
- Ricty Diminished
- MeiryoKe_Consele (or MeiryoKe_Gothic)

### Extensions
- File Path On Footer
- VSColorOutput
- Git Diff Margin
- Hide Main Menu
- Xaml Styler
- Text Sharp
  1. Text rendering mode : ClearType or Auto ON
  1. Text formatting mode : Display ON
  1. Text hinting mode : Auto ON
  1. Targets : Both ON
- Color Theme Editor（見づらい時、Editor-Colorを設定する）
  1. 強調表示された参照
  1. 演算子
  1. 現在の行を強調表示する。`前景色: 明るく` `背景色: 黒`

## Tool > Option
- Environment
  - General
  Status Display: `off`
- Text Editor
  - Display
  現在の行を強調表示する: `off`
  - C#
  Navigration Bar: `off`
- Productivity Power Tools
  - `Custom Document Well > General`
    - Place tabs on the: `Left`
    - Show Close button: `off`
    - Color tabs by project: `on`
  - `Custom Document Well > Advanced`
    - Selected tab: `VS Colors`
  - `PowerCommands > General`
    - Remove and Sort Usings on save: `on`

  - `Quick Launch Tasks` が同梱されてなければ別途インストールする。ctl-T,T,T

  - Uninstall `Fix Mixed Tabs` at Visual Studio Extension.


- Shortcut [2010以前ショートカット設定 alt-矢印](https://gist.github.com/masaru-b-cl/4378557)

```
<UserShortcuts>
    <RemoveShortcut Command="Tools.Switch" Scope="全体">Ctrl+0</RemoveShortcut>
    <RemoveShortcut Command="{C9DD4A59-47FB-11D2-83E7-00C04F9902C1},306" Scope="全体">Ctrl+9</RemoveShortcut>
    <Shortcut Command="Tools.Switch" Scope="全体">Ctrl+9</Shortcut>
    <RemoveShortcut Command="Edit.MoveLineDown" Scope="全体">Ctrl+Shift+Alt+下矢印, Ctrl+Shift+Alt+下印</RemoveShortcut>
    <RemoveShortcut Command="Edit.MoveLineUp" Scope="全体">Ctrl+Shift+Alt+上矢印, Ctrl+Shift+Alt+上印</RemoveShortcut>
    <RemoveShortcut Command="ProjectandSolutionContextMenus.Item.MoveDown" Scope="全体">Alt+下印</RemoveShortcut>
    <Shortcut Command="Edit.MoveLineDown" Scope="全体">Alt+下矢印</Shortcut>
    <RemoveShortcut Command="ProjectandSolutionContextMenus.Item.MoveUp" Scope="全体">Alt+上矢印</RemoveShortcut>
    <Shortcut Command="Edit.MoveLineUp" Scope="全体">Alt+上矢印</Shortcut>
</UserShortcuts>
```
