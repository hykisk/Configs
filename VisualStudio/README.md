# VisualStudio(2015以降)
- - -

### Extensions

- Font
  - Ricty Diminished
  - MeiryoKe_Consele (or MeiryoKe_Gothic)

- Extentions
  - VSColorOutput
  - Git Diff Margin
  - Hide Main Menu
  - Xaml Styler
  - Text Sharp
    1. Text rendering mode : ClearType or Auto ON  
    1. Text formatting mode : Display ON  
    1. Text hinting mode : Auto ON  
    1. Targets : Both ON  
  - Color Theme Editor（見づらい時、手動で以下を行う）  
    1. ツール > オプション > フォントと色 > 設定の表示[テキストエディタ]  
    1. 強調表示された参照
    1. 演算子

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