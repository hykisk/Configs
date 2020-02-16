## [images](https://www.dropbox.com/home/70.images)
 - - -
## [shortcuts](https://www.dropbox.com/home/71.shortcuts)
 - - -
## [Clibor](http://www.vector.co.jp/soft/dl/winnt/util/se472890.html)

- 基本動作 > メイン画面 > メイン画面の横幅 > `600px`
- フォント > `MeiryoKe_Console`
- クリップボード > 履歴に格納するテキストの最大サイズ > `1024KB`
- クリップボード > クリップボード履歴を保存する件数 > `10000件`
- 検索 > 検索ボックス > `on`
- 配色 > `配色3`

- - -

## [sakura](https://github.com/sakura-editor/sakura/releases)

- 設定 > 共通設定 > ファイル > ファイルの排他制御 > `しない`

[highlight and keyword](https://www.dropbox.com/home/72.sakura)

- - -

## [Keyboard REALFORCE-87UB-S-SE170S](https://www.archisite.co.jp/products/topre/realforce87ub_se170s/)

- [DIP SW](https://www.archisite.co.jp/products/topre/realforce87ub_se170s/)

  | My Setting | DIP SW | Key        | OFF        | ON            |
  | ---------- | ------ | ---------- | ---------- | ------------- |
  | ON         | SW1    | Left Ctrl  | Left Ctrl  | **CapsLock**  |
  |            |        | CapsLock   | CapsLock   | **Left Ctrl** |
  | OFF        | SW2    | Windows/AP | **Enable** | Disbale       |
  | ON         | SW3    | NumLock    | Enable     | **Disbale**   |
  | OFF        | SW4    | Unused     | –          | –             |

- Remapping

  [ScancodeMap_REALFORCE-87UB-S-SE170S.reg](./ScancodeMap_REALFORCE-87UB-S-SE170S.reg)

- 入力方式の切り替え

  設定 > キーボードの詳細設定 > 入力言語のホット キー

  入力言語を切り替える: `なし` (誤操作が多くなるため)

- - -

- Memo

  `コンピューター\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout`

  新規->バイナリ値-><br>
  名前：Scancode Map<br>
  値：<br>
  ```
  00 00 00 00 00 00 00 00
  02 00 00 00 5B E0 7B 00 # muhenkan -> win
  02 00 00 00 1D 00 3A 00 # capslock -> ctl
  02 00 00 00 0E 00 2B 00 # backspace -> |
  02 00 00 00 2B 00 0E 00 # | -> backspace
  02 00 00 00 4B E0 49 E0 # `Page Up` -> L Arrow
  02 00 00 00 4D E0 51 E0 # `Page Down` -> R Arrow
  00 00 00 00
  ```

  [レジストリを修正してCAPSLOCKの割り当て変更](http://yanor.net/wiki/?Windows%2FTIPS%2F%E3%83%AC%E3%82%B8%E3%82%B9%E3%83%88%E3%83%AA%E3%82%92%E4%BF%AE%E6%AD%A3%E3%81%97%E3%81%A6CAPSLOCK%E3%81%AE%E5%89%B2%E3%82%8A%E5%BD%93%E3%81%A6%E5%A4%89%E6%9B%B4)

- - -

## [Git for Windows](https://gitforwindows.org/)

[README.md](https://github.com/hykisk/Configs/blob/master/Git/README.md)

- - -

## [VSCode](https://code.visualstudio.com/download)

- - -

## [Google 日本語入力](https://www.google.co.jp/ime/)

- - -

## [Firefox](https://www.mozilla.org/ja/firefox/new/)
- OPTION
  - General Language : `English`
  - Colors & Fonts : `MeiryoKe_Console`
  - Search for text when you start typing `off->on`
- Add-ons
- Tree Style Tab
  - Language of translation: `日本語`
- ImTranslator
  - Select source language: `Japanese`
  - Select target  language: `English`
- ~~Mouse Dictionary~~
- ColorZilla
- ColorPicker
- Shortcut Keys for Google Search
- Google PDF Viewer
- ~~isear~~
- Markdown Here (for GMail)
- Markdown Viewer
- RESTClient
- ~~AutocopySelection2Clipboard~~
- Adblock Plus
- ~~Alt - Select: Selection Translate - For Alt~~
- ~~Google Translate for Selected Text~~
- ~~SearchWP~~
  - CONTENT toc : `off -> on`
- Nimbus Screen Capture: Screenshot, Edit, Annotate
  - Hotkeys Settings: all disable
- Tab hider
- Saka Key
  - Use defalt Keybindings
     - Toggle Saka `ctrl + [`
     - Scroll Right `ctrl + alt + j`
     - Scroll Left `ctrl + alt + k`

- - -

## [WSL Terminal](https://github.com/goreliu/wsl-terminal/releases)

- looks -> Theme > `base16-darktooth.minttyrc` or `base16-materia.minttyrc`
- looks -> cursor > `線`
- マウス > 右マウスボタン > `ペースト`
- Font > `MeiryoKe_Console`

- - -

## [ScreenToGif](https://www.screentogif.com/)

- - -

## [Google Chrome](https://www.google.com/intl/ja_jp/chrome/)
- Advanced REST client
- FireShot

- - -

## [A5:SQL Mk-2](https://a5m2.mmatsubara.com/)

- - -

## [LICEcap](https://freesoft-100.com/download/licecap/)

- - -

## [最前面でポーズ](https://www.vector.co.jp/download/file/winnt/util/fh719128.html)


- - -

## [MemInfo](https://www.gigafree.net/system/systeminfo/meminfo.html)

- - -

## [Screenpresso](https://www.screenpresso.com/)

- General > `English`
- General > Show quickcapture window > `off`
- Advanced > WorkspaceAutoCloseDelay > `0`

- - -

## [Magic Trackpad Utilities](https://magicutilities.net/download)

- Swap swipte direction `off->on`

- - -

## [Thunderbird](https://www.thunderbird.net/ja/)

- - -

## [QTranslate](http://quest-app.appspot.com/download)

- ホットキーのバッティングを回避

  メインウィンドウを表示する: `なし`

  選択したテキストを音声再生する: `なし`

- - -

## [しまう窓](https://www.vector.co.jp/soft/winnt/util/se480150.html?ds)

- alt+q: Close Windows in current monitor

- - -

## Others

- Explore

  checkbox で選択: `on`

- ウィンドウのスナップ機能を無効にする。

  設定 > システム > マルチタスク > スナップ機能

- ウィンドウのシェイク機能を無効にする。

  win+r `gpedit.msc`

  ユーザーの構成 > 管理用テンプレート > デスクトップ > Aero Shakeのウィンドウ最小化のマウス ジェスチャをオフにする > `有効`

- - -

## win+r（起動アプリに登録） shell:startup

- - -
