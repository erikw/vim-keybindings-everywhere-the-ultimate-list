# Vim Keybindings Everywhere - The Ultimate List [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Get%20Vim%20keybindings%20everywhere%20-%20the%20ultimate%20list%20of%20programs%20with%20native%20support%20or%20extensions%20providing%20it&url=https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list&via=erik_westrup&hashtags=vim,keybindings,list)
[![<magic-marker-nbr-native>](https://img.shields.io/badge/Native%20programs%20listed-156-brightgreen)](#)
[![<magic-marker-nbr-extensions>](https://img.shields.io/badge/Extensions%20listed-74-blue)](#)
[![Closed issues](https://img.shields.io/github/issues-closed/erikw/vim-keybindings-everywhere-the-ultimate-list?color=success)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/issues?q=is%3Aissue+is%3Aclosed)
[![Closed PRs](https://img.shields.io/github/issues-pr-closed/erikw/vim-keybindings-everywhere-the-ultimate-list?color=success)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/pulls?q=is%3Apr+is%3Aclosed)
[![OSS Lifecycle](https://img.shields.io/osslifecycle/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/Netflix/osstracker)
[![License](https://img.shields.io/github/license/erikw/vim-keybindings-everywhere-the-ultimate-list?color=lightgrey)](LICENSE.txt)
[![Bump count of tools listed](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/actions/workflows/bump_tool_count.yml/badge.svg)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/actions/workflows/bump_tool_count.yml)


[![Contributors](https://img.shields.io/github/contributors/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors) including these top contributors:<br>
<a href = "https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors">
<img src = "https://contrib.rocks/image?repo=erikw/vim-keybindings-everywhere-the-ultimate-list&max=36"/>
</a>

**:rocket: PRs are welcome**

## What is this list?
Once your fingers have [learned](https://www.thejach.com/view/2012/07/vims_learning_curve_is_wrong) to speak Vim, they don't want to speak anything else! It's simply a very effective way of navigating, creating and editing text. Thus, it's natural that one would like to get Vim-like keybindings in as many programs we use as possible.

The intention of this collaborative list is to:
* learn which programs/apps that you already use which you can enhance with Vim keybindings. Search in your browser with `ctrl/cmd + f`.
* discover new programs that support Vim keybindings. In the need for a new file manager? Why not get one that has Vim keybindings?
* be up-to-date and alive -- add new programs and extensions as they evolve!

There are of course already lists like this one floating around on the internet (see [Acknowledgments](#Acknowledgments)). While they are great, the issue is that they are not up-to-date with the latest developments. There are Vim-emulator add-ons being developed all the time! This is why this collaborative list was created.

(yes, technically it is **vi**-like keybindings we talk about here, but most people know and Google for vim, thus vim is used here instead of vi).

## Legend
The following symbols are used with each list item to make it clearer what kind of Vim keybindings support exist
* :white_check_mark: - built-in support (possibly via a setting)
* :heavy_plus_sign: - via addon/extension

Terminology:
* [TUI](https://itlaw.fandom.com/wiki/Text_user_interface) - Text User Interface

**Tip**: navigate this file easily by using GitHub's built-in Markdown Table of Contents in the top left corner:
<a href="#" title="GitHub built-in Table of Contents for markdown files."><img src="img/github_md_toc.png" width="256" alt="ToC"></a>




# The Ultimate Vim Keybinding List

## Debuggers
* :white_check_mark: [cgdb](http://cgdb.github.io/) - a curses interface on top of the GDB debuger with keybindings modeled after vim.
* :white_check_mark: [vimpdb](https://github.com/gotcha/vimpdb) - An integration of the python debugger `pdb` and vim.


## Development
* :white_check_mark: [ipython](https://ipython.org/) - Interactive Python shell. It no longer uses readline for input, so it must be configured in the ipython profile `~/.ipython/profile_default/ipython_config.py` itself ([reference](https://gist.github.com/sstirlin/c3c207b1052b613ab9554b4ebdfc3f35)):
  * ```ini
    c.TerminalInteractiveShell.editing_mode = "vi"
    ```
* :white_check_mark: [GHCi](https://wiki.haskell.org/GHC/GHCi) - Interactive Haskell environment. It uses [haskeline](https://hackage.haskell.org/package/haskeline) instead of readline. Put this in `~/.haskeline`:
  * ```yaml
    editMode: Vi
    ```

* :heavy_plus_sign: [Jupyter Lab](https://pypi.org/project/jupyterlab-vim/) - Science and Data Development notebook environment. Add this package [jupyterlab-vim](https://pypi.org/project/jupyterlab-vim/) and restart the server. It is available for both `pip` and `conda` managed environments (and their derivatives).
* :white_check_mark: [LINQPad](https://www.linqpad.net/) - The .NET Programmer’s Playground. vi mode available in settings. To enable go to Edit > Preferences > vi mode. Quite limited, doesn't support ex commands, registers and macros.

* [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio/) - Database tool similar to Microsoft SQL Server Management Studio. Supports VSCode extensions.
  * :heavy_plus_sign: [Vim plugin](https://github.com/VSCodeVim/Vim) - Cannot be installed directly in the plugin section. Go to [Vim plugin release page](https://github.com/VSCodeVim/Vim/releases) and download `.vsix` file. Inside Azure Data Studio navigate to Extensions > three dots at the top > Install from VSXI. You will likely see message: "Unable to install extension 'vscodevim.vim' as it is not compatible with the current VS Code engine version". If you see that message you should try earlier release.
* :white_check_mark: [Google Colab](https://colab.research.google.com/) - Data analysis and machine learning tool that allows you to combine executable Python code and rich text along with charts, images, HTML, LaTeX and more into a single document stored in Google Drive. Vi mode supported through [keyboard binding settings](https://colab.research.google.com/notebooks/editor_details.ipynb#scrollTo=bEXkvERUtU5O). You can [enable](https://stackoverflow.com/questions/48674326/is-there-a-way-to-use-vim-keybindings-in-google-colaboratory ) it through Tools > Settings > Editor
* [The Julia Programming Language](https://julialang.org/) - High level, general-purpose dynamic programming language suited for numerical analysis and computational science
  * :heavy_plus_sign: [VimBindings.jl](https://github.com/caleb-allen/VimBindings.jl) - A Julia package which emulates vim directly in the Julia REPL

* :white_check_mark: [k9s](https://k9scli.io/) - Kubernetes CLI tool with full VIM bindings
* [DBeaver](https://dbeaver.io/) - Free Universal Database Tool
  * :heavy_plus_sign: [Vrapper plugin](https://vrapper.sourceforge.net/home/) - Plugin adds vim bindings to SQL editor. Install it using instructions from https://github.com/dbeaver/dbeaver/issues/8219


## E-Mail
* :white_check_mark: [Mutt](http://www.mutt.org/) - The vim of email, a TUI email client
* :white_check_mark: [NeoMutt](https://neomutt.org/) - A fork of mutt, intendted to reignite the development.
* :white_check_mark: [sup](https://sup-heliotrope.github.io/) - a console-based email client for people with a lot of email with Vim-inspired [keyboard shortcuts](https://github.com/sup-heliotrope/sup/wiki/Keyboard-reference).
* [Thunderbird](https://www.thunderbird.net/en-US/)
  * :heavy_plus_sign: [Muttator](https://addons.thunderbird.net/en-US/thunderbird/addon/muttator/) - Like Vimperator but for thunderbird.
  * :heavy_plus_sign: ~[teledactyl](https://github.com/5digits/dactyl/tree/master/teledactyl)~
* :white_check_mark: [aerc](https://aerc-mail.org/) - Terminal email client with Vim keybindings.
* :white_check_mark: [meli](https://meli.delivery/) - A TUI email client with Vim-like keybindings.
* Microsoft Outlook
  * :heavy_plus_sign: ~[cubiclevim](https://sourceforge.net/projects/cubiclevim/)~ - Edit Microsoft Outlook messages in Vim-style.


## Economy
* :white_check_mark: [cointop](https://github.com/cointop-sh/cointop) - interactive terminal based UI application for tracking and monitoring cryptocurrency.

## File Management
* :white_check_mark: [vifm](https://vifm.info/) - TUI file manager with vi keybindings.
* :white_check_mark: [ranger](https://github.com/ranger/ranger) - Another TUI file manager.
* :white_check_mark: [lf](https://github.com/gokcehan/lf) - TUI file manager similar to ranger.
* :white_check_mark: [felix](https://github.com/kyoheiu/felix) - TUI file manager.
* :white_check_mark: [nnn](https://github.com/jarun/nnn) - TUI file manager.
* :white_check_mark: [xplr](https://github.com/sayanarijit/xplr) - TUI file manager.
* :white_check_mark: [ncdu](https://dev.yorhel.nl/ncdu) - ncurses disk usage explorer.
* :white_check_mark: [cfiles](https://github.com/mananapr/cfiles) - A ncurses file manager written in C with Vim-like keybindings.
* :white_check_mark: [rover](http://lecram.github.io/p/rover/) - A small file browser with Vi-like key bindings for navigation.
* :white_check_mark: [broot](https://dystroy.org/broot/) - An interactive file tree explorer. [vim_mode](https://dystroy.org/broot/vim_mode/) can be enabled in the configuration file.
* [Total Commander](https://www.ghisler.com/)
  * :heavy_plus_sign: [ViATc](https://github.com/magicstep/ViATc-English) - adds a Vim mode to Total Commander.
* macOS Finder
  * :heavy_plus_sign: [Finder Vim Mode](https://github.com/chrisgrieser/finder-vim-mode) - adds extensive vim-like/ranger-like keybindings, works via Karabiner Elements.
* :white_check_mark: ~[jvifm](https://sourceforge.net/projects/jvifm/)~ - A Java implementation of vifm; a file manager with Vim-like keybindings.
* :white_check_mark: ~[vide](https://github.com/xaizek/vide)~ - The graphical predecessor of vifm that uses GTK+
* [fman](https://fman.io/) - A dual-pane file manager.
  * :heavy_plus_sign: [VimNavigation](https://github.com/raguay/VimNavigation) - Adds Vim-style keyboard navigation to the fman file manager.
* :white_check_mark: [yazi](https://yazi-rs.github.io/) - Blazing fast terminal file manager written in Rust, based on async I/O.

## IDEs
* [Jetbrain's IDEs](https://www.jetbrains.com/products/#type=ide) (Intellij, PYCharm, PHPStorm, WebStorm, ...)
  * :heavy_plus_sign: [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim) - Install it directly from the plugin section in the IDE settings.
* [Visual Studio Code (VSCode)](https://code.visualstudio.com/)
  * :heavy_plus_sign: [VSCodeVim](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim) - Vim emulation for Visual Studio Code. [GitHub](https://github.com/VSCodeVim/Vim)
  * :heavy_plus_sign: [VSCode Neovim](https://marketplace.visualstudio.com/items?itemName=asvetliakov.vscode-neovim) - Alternative to the VIM plugin, uses a full nvim instance in the background instead of just emulating VIM. [GitHub](https://github.com/vscode-neovim/vscode-neovim)
* :white_check_mark: [XCode](https://developer.apple.com/xcode/) - Apple's IDE. Vim mode can be enabled under the "Editor" menu without use of plugins.
  * :heavy_plus_sign: ~[XVim](https://github.com/XVimProject/XVim)~ plugin. Deprecated, use native keybindings (above) instead.
  * :heavy_plus_sign: ~[XVim2](https://github.com/XVimProject/XVim2)~ plugin. Deprecated, use native keybindings (above) instead.
* [Eclipse](https://www.eclipse.org/ide/)
  * :heavy_plus_sign: [vrapper-vim](https://marketplace.eclipse.org/content/vrapper-vim) - A wrapper that provides a Vim-like input scheme for moving around and editing text.
  * :heavy_plus_sign: [viplugin](https://marketplace.eclipse.org/content/viplugin)
  * :heavy_plus_sign: [viable](https://marketplace.eclipse.org/content/viable-vim-eclipse)
  * :heavy_plus_sign: ~[vimplugin](https://sourceforge.net/projects/vimplugin/)~
* [NetBeans](https://netbeans.apache.org/) - Java IDE
  * :heavy_plus_sign: [jVI](https://jvi.sourceforge.net/) - A Vim-editor clone for the NetBeans IDE.
  * :heavy_plus_sign: ~[viex](https://sourceforge.net/projects/viex/)~
* [Visual Studio](https://visualstudio.microsoft.com/)
  * :heavy_plus_sign: [VsVim (Visual Studio 2015-2019)](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim) - install through the extensions inside Visual Studio
  * :heavy_plus_sign: [VsVim 2022 (Visual Studio 2022)](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim2022Preview) - install through the extensions inside Visual Studio
  * :heavy_plus_sign: [viemu](http://www.viemu.com/) - add Vim emulation to Visual Studio, SQL Server, Word & Outlook.
* [Geany](https://www.geany.org/)
  * :heavy_plus_sign: [vimode](https://github.com/geany/geany-plugins/blob/master/vimode/README) - The vimode plugin can be enabled from the settings.
* :white_check_mark: [RStudio](https://posit.co/download/rstudio-desktop/) - There's a built-in [Vim Editing Mode](https://stackoverflow.com/a/47208291).
* :white_check_mark: [MonoDevelop](https://www.monodevelop.com/) - Cross platform IDE for C#, F# and more, with [Vi-mode](https://www.monodevelop.com/archived/developers/tasks/source-editing/vi-mode/).
* :white_check_mark: ~[pida](https://launchpad.net/pida)~ - An IDE that aims to use the tools you wish to use(including Vim and Emacs).
* DrRacket - IDE for learning the Racket language.
  * :heavy_plus_sign: ~[DrRacket Vim Tool](https://github.com/takikawa/drracket-vim-tool)~ - An IDE that aims to use the tools you wish to use(including Vim and Emacs).
* :white_check_mark: [Zed](https://zed.dev/) - Vim mode is built-in. Can be [enabled](https://zed.dev/docs/configuring-zed#vim) and [configured](https://zed.dev/docs/vim) in the settings file.

## Image Editors
* :white_check_mark: [rx](https://rx.cloudhead.io/) - A pixel editor.
* :white_check_mark: [ViPaint](https://gitlab.com/jgkamat/ViPaint) - A modal Vi-like painting program.

## Image Viewers
* :white_check_mark: [vimiv-qt](https://github.com/karlch/vimiv-qt) - An image viewer with Vim-like keybindings.
* :white_check_mark: [xzgv](https://sourceforge.net/projects/xzgv/) - Keyboard driven image viewer with Vim-style navigation.
* :white_check_mark: [Pim](https://github.com/Narrat/Pim) - A PyGObject based image viewer with Vim-like keybindings.
* :white_check_mark: [nsxiv](https://codeberg.org/nsxiv/nsxiv) - A maintained fork of sxiv.
* :white_check_mark: ~[sxiv](https://github.com/xyb3rt/sxiv)~ - See nsxiv instead.
* :white_check_mark: ~[vimiv](https://github.com/karlch/vimiv)~ - See vimiv-qt.

## Hex editors
* :white_check_mark: [bvi](https://bvi.sourceforge.net/) - A Hex editor for those familiar with Vi-like keybindings
* :white_check_mark: [hed](https://repo.or.cz/w/hed.git) - A terminal hexadecimal editor with Vim-like controls.
* :white_check_mark: [hexer](https://devel.ringlet.net/editors/hexer/) - a Vi-like binary editor.
* :white_check_mark: [hx](https://github.com/krpors/hx) - Hex editor for the terminal with simple Vim-like keybindings.
* :white_check_mark: ~[HEdit](https://github.com/95ulisse/hedit)~ - A Vim-like terminal-based hex editor scriptable with JS.
* :white_check_mark: ~[bviplus](https://bviplus.sourceforge.net/)~ - An ncurses based Gex editor with a Vim-like interface.

## Misc
* :white_check_mark: [fx](https://github.com/antonmedv/fx) - Terminal based JSON viewer.
* :white_check_mark: [glow](https://github.com/charmbracelet/glow) - Terminal based markdown reader.
* :white_check_mark: [gollum](https://github.com/gollum/gollum) - A Git-powered wiki with built-in vim editing mode. Start with `--default-keybind vim`.
* :white_check_mark: [mdp](https://github.com/visit1985/mdp) - A command-line based markdown presentation tool.
* :white_check_mark: [pipedial](https://code.reversed.top/user/xaizek/pipedial) - A terminal selector with basic Vim-like keybindings.
* :white_check_mark: [pulsemixer](https://github.com/GeorgeFilipkin/pulsemixer) - CLI and curses mixer for [PulseAudio](https://www.freedesktop.org/wiki/Software/PulseAudio/).
* :white_check_mark: [sentaku](https://github.com/rcmdnk/sentaku) - A terminal selector with Vim-like keybindings.
* :white_check_mark: [stig](https://github.com/rndusr/stig) - TUI/CLI for the BitTorrent client Transmission.
* :white_check_mark: [termshark](https://termshark.io/) - a UI for tshark with Vim-navigation.
* :white_check_mark: ~[Yzis](https://github.com/chrizel/Yzis)~ - A vi/vim engine that is easy to integrate in any graphical application.
* :white_check_mark: [mycli](https://www.mycli.net) - A CLI for MySQL, MariaDB, and Percona with auto-completion and syntax highlighting. There are two types of keybindings available. Emacs mode and Vi mode.
* :white_check_mark: [Remember The Milk](https://www.rememberthemilk.com/help/answer/basics-basics-keyboard) - A task management application available on various platforms including web, Windows, Linux, macOS desktop, and Android & iOS mobile apps. It offers built-in Vim-like keybindings on its desktop and web versions.
* :white_check_mark: [Kitty](https://sw.kovidgoyal.net/kitty/) - The fast, feature-rich, GPU based terminal emulator. Through its configuration, users can configure splitting and navigation to mimic the behavior of Vi.
    Example:
    ```
    # ~/.config/kitty/kitty.conf

    # Jump around neighboring window Vi key binding
    map ctrl+shift+w>h neighboring_window left
    map ctrl+shift+w>l neighboring_window right
    map ctrl+shift+w>j neighboring_window down
    map ctrl+shift+w>k neighboring_window up

    map ctrl+shift+w>shift+h move_window left
    map ctrl+shift+w>shift+l move_window right
    map ctrl+shift+w>shift+j move_window down
    map ctrl+shift+w>shift+k move_window up

    # Create a new window splitting the space used by the existing one so that
    # the two windows are placed one above the other
    map ctrl+shift+w>s launch --location=hsplit

    # Create a new window splitting the space used by the existing one so that
    # the two windows are placed side by side
    map ctrl+shift+w>v launch --location=vsplit

    # Use nvim as the pager. Remove all ASCII formatting characters.
    scrollback_pager nvim --noplugin -c 'set buftype=nofile' -c 'set noswapfile' -c 'silent! %s/\%x1b\[[0-9;]*[sumJK]//g' -c 'silent! %s/\%x1b]133;[A-Z]\%x1b\\//g' -c 'silent! %s/\%x1b\[[^m]*m//g' -c 'silent! %s///g' -
    ```
* [Anki](https://apps.ankiweb.net/) - Spaced repetition and media-rich cards flashcard program for study.
	* ➕ [anki_vimove](https://ankiweb.net/shared/info/1997961715) - Add-on for vi-like movement in deck browser.

## Music Players
* :white_check_mark: [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp) - An ncurses client for [mpd](https://www.musicpd.org/). The navigation can quite easily be made to behave like vim with some keyboard configurations.
  * <details>
      <summary>~/.config/ncmpcpp/bindings</summary>

      ```
      def_key "j"
        scroll_down
      def_key "k"
        scroll_up
      def_key "h"
        previous_column
      def_key "l"
        next_column
      def_key "ctrl-b"
        page_up
      def_key "ctrl-u"
        page_up
      def_key "ctrl-f"
        page_down
      def_key "ctrl-d"
        page_down
      def_key "g"
        move_home
      def_key "G"
        move_end
      def_key "n"
        next_found_item
      def_key "N"
        previous_found_item
       ```
    </details>
* :white_check_mark: [cmus](https://github.com/cmus/cmus) - A console music player with vim-like [keybindings](https://man.archlinux.org/man/cmus.1.en#KEYBINDINGS).
* :white_check_mark: [vimus](https://github.com/vimus/vimus) - An MPD client with Vim-like keybindings.
* :white_check_mark: [vimpc](https://github.com/boysetsfrog/vimpc) - A console mpd client that provides a vim-like interface. Default keybindings in the [help file](https://github.com/boysetsfrog/vimpc/blob/master/doc/help.txt)
* :white_check_mark: [vitunes](http://vitunes.org/) - An MPD client with Vi-like bindings.
* :white_check_mark: [pms](https://kimtore.github.io/pms/) - A frontend to MPD with Vim-like keybindings.
* :white_check_mark: [siren](https://www.kariliq.nl/siren/) - A text-based audio player with [Vim-like](https://www.kariliq.nl/man/siren.1.html) keybindings.
* Spotify
    * :white_check_mark: [spotify-tui](https://github.com/Rigellute/spotify-tui) - TUI for Spotify with Vim-like keybindings.
    * :heavy_plus_sign: [spicetify](https://spicetify.app/) - an extension framework for spotify. Includes an extension with [vim-like](https://spicetify.app/docs/advanced-usage/extensions/#keyboard-shortcut) keybindings.
* :white_check_mark: ~[herrie](https://github.com/EdSchouten/herrie)~ - a MPD player with Vim-like [keybindings](https://github.com/EdSchouten/herrie/blob/master/herrie/man/00-man).

## Music Production
* :white_check_mark: ~[pineapple-tracker](https://github.com/pineapple-tracker/pineapple-tracker)~ - A console-based sequencer with a vi-style UI.
* [Reaper](https://www.reaper.fm/) - A DAW.
* :heavy_plus_sign: [Reaper-Keys](https://github.com/gwatcha/reaper-keys) - Bringing a modal editor to the Reaper DAW.

## News/RSS Readers
* :heavy_plus_sign: [Newsboat](https://newsboat.org/) - RSS/Atom reader with a TUI.
* :heavy_plus_sign: ~[Newsbeuter](https://github.com/akrennmair/newsbeuter)~ - Unmaintained, see Newsboat./

## Office Productivity
* [LibreOffice](https://www.libreoffice.org/)
  * :heavy_plus_sign: [vibreoffice](https://github.com/seanyeh/vibreoffice) - Vi Mode for LibreOffice/OpenOffice.
* [AbiWord](http://www.abisource.com/) - An OSS word processor.
  * :heavy_plus_sign: It can be [configured](http://recycledelectron.blogspot.com/2009/01/vi-and-emacs-key-bindings-in-abiword.html) to get Vim keybindings.
* :white_check_mark: [sc](https://en.wikipedia.org/wiki/Sc_(spreadsheet_calculator)) - The venerable Spreadsheet Calculator with Vim-like [keybindings](https://www.linuxjournal.com/article/10699).
* :white_check_mark: [sc-im](https://github.com/andmarti1424/sc-im) - Like sc but improved, a Vim-like spreadsheet calculator.
* :white_check_mark: [VisiData](https://www.visidata.org/) - A TUI data exploration tool with Vim-like [navigation](https://jsvine.github.io/intro-to-visidata/basics/navigating-visidata/).
* Google Docs Editors suite
  * :heavy_plus_sign: [SheetKeys](https://github.com/philc/sheetkeys) - Browser extension (Chrome and Firefox) which adds Vim keybindings to Google Sheets.

## Pagers
* :white_check_mark: [less](https://en.wikipedia.org/wiki/Less_(Unix))
* :white_check_mark: [bat](https://github.com/sharkdp/bat)

## PDF Viewers
* :white_check_mark: [apvlv](https://github.com/naihe2010/apvlv) - A PDF Viewer that acts Like Vim
* :white_check_mark: [MuPDF](https://mupdf.com) - PDF and ebook reader with [vim keybindings](http://tuxdiary.com/2015/04/18/mupdf/).
* :white_check_mark: [zathura](https://pwmt.org/projects/zathura) - Document reader, vim-keybindings, partly based on MuPDF. Linux only.
* :white_check_mark: [SumatraPDF](https://www.sumatrapdfreader.org/free-pdf-reader) - Document reader, vim-keybindings. Windows only.
* :white_check_mark: [Okular](https://okular.kde.org/) - Has some [basic](https://docs.kde.org/stable5/en/okular/okular/okular.pdf) Vim-like navigation.
* :white_check_mark: [xpdf](https://www.xpdfreader.com/) - This PDF viewer can be [configured](https://stackoverflow.com/a/11800265/265508) to get Vim-like navigation.
* :white_check_mark: [Sioyek](https://github.com/ahrm/sioyek) - Both keyboard and (optionally) mouse focused. Configurable and has the possibility of adding and developing plugins.
* Preview.app - macOS native document viewer:
  * :heavy_plus_sign: [preview-vim](https://github.com/xrisk/preview-vim) - Adds vim-like keybindings, works via Karabiner Elements.

## Personal Knowledge Management
* :white_check_mark: [Obsidian](https://obsidian.md/) - under "Editor" options
* [Logseq](https://logseq.com/)
  * :heavy_plus_sign: [logseq-plugin-vim-shortcuts](https://github.com/vipzhicheng/logseq-plugin-vim-shortcuts) - normal mode commands deal with whole blocks, editing text is only possible in edit mode
* :white_check_mark: [Joplin](https://joplinapp.org/) - under "Tools" → "Options" → "General" → "Show Advanced Settings" → "Keyboard Mode"
* :white_check_mark: [Trilium](https://github.com/zadam/trilium) - 'Enable Vim Keybindings' added to Options in early-2022
  * code notes use the [CodeMirror](https://github.com/codemirror/dev/) editor and its [Vim mode](https://codemirror.net/5/demo/vim.html)

## Social
* :white_check_mark: [matui](https://github.com/pkulak/matui) - a Matrix TUI with vim-like navigation.
* :white_check_mark: [tut](https://github.com/RasmusLindroth/tut) - a Mastodon client with vim-like navigation
* [irssi](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) - the popular IRC client.
  * :heavy_plus_sign: [vim_mode](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) plugin.
* [weechat](https://weechat.org/) - A flexible IRC client.
  * :heavy_plus_sign: [weechat-vimode](https://github.com/GermainZ/weechat-vimode) - A script that will configure Weechat to get Vim-like navigation.
* :white_check_mark: [scli](https://github.com/isamert/scli) - Signal messenger TUI with Vim-like keybindings.
* ~[rtv](https://github.com/michael-lazar/rtv)~ - A Reddit TUI viewer
* ~[vchatter](https://vchatter.sourceforge.net/)~ - A Vi-like Jabber chat client.

## Source Code Management
* :white_check_mark: [git](https://git-scm.com/) - Nothing's better than the real deal. Tell git to use vim/nvim when editing commit messages, interactive rebase etc. by putting in your `~/.config/git/config`:
  * ```ini
    [user]
        editor = vim
    ```
* :white_check_mark: [tig](https://jonas.github.io/tig/) - Text interface for git. Works mostly like vim out of the box, but can be enhanced by sourcing these [keybindings](https://github.com/jonas/tig/blob/master/contrib/vim.tigrc) in your `~/.tigrc`.
* :white_check_mark: [hg/mercurical](https://www.mercurial-scm.org/) - Put in your `~/.config/hg/hgrc`:
  * ```ini
    [ui]
        editor = vim
    ```
* :white_check_mark: [GitUI](https://github.com/extrawurst/gitui) - GitUI provides you with the comfort of a git GUI but right in your terminal.  
  * instruction how to enable vi bindings - https://github.com/extrawurst/gitui/blob/master/KEY_CONFIG.md




## Shells
* :white_check_mark: [readline](https://man.archlinux.org/man/readline.3) - Readline is a library used by many CLI programs to read input from users. By configuring readline to use vi key bindings, you automatically get it for programs like `bash`, `irb`, `octave` etc. By default, readline has Emacs-like keybindings, but you can change that by putting this in your `~/.inputrc`:
  * ```
    set editing-mode vi
    set keymap vi-insert
    ```
* :white_check_mark: [Bash](https://www.gnu.org/software/bash/) - The preferred method is to set Vi mode in `~/.inputrc` via readline, as you will get Vi mode automatically in all programs using the library. However, if you just want this for bash, put this in your bash startup file e.g. `~/.bashrc`:
  * ```bash
    set -o vi
    ```
* :white_check_mark: [zsh](https://en.wikipedia.org/wiki/Z_shell) - just put this in your ZSH startup file, most likely `~/.zshrc`:
  * ```bash
    bindkey -v
    ```
  * <details>
      <summary>Extra text object keybindings</summary>

    ```bash
    # Add text object extension -- eg ci" da(:
    autoload -U select-quoted
    zle -N select-quoted
    for m in visual viopp; do
        for c in {a,i}{\',\",\`}; do
            bindkey -M $m $c select-quoted
        done
    done
    ```
    </details>
  * :heavy_plus_sign: [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode) - A better and friendly Vim-mode plugin for zsh.
* :white_check_mark: [fish](https://fishshell.com/) - Just add to your `~/.config/fish/config.fish` ([reference](https://stackoverflow.com/a/28445450/265508)):
  * ```bash
    fish_vi_key_bindings
    ```
* :white_check_mark: [tcsh](https://www.tcsh.org/) - Put this in your tcsh startup file e.g. `~/.tcshrc` ([reference](https://www.oreilly.com/library/view/mac-os-x/0596004583/ch04s02.html)):
  * ```bash
    bindkey -v
    ```
* :white_check_mark: [ksh](https://en.wikipedia.org/wiki/KornShell) - Put this in your ksh startup file e.g. `~/.kshrc`:
  * ```bash
    set -o vi
    ```
* :white_check_mark: [nushell](https://www.nushell.sh) - Put this in your config file e.g. `$nu.config-path`:
  * ```nu
    let-env config = {
      # ...
      edit_mode: vi,
      # ...
    }
    ```

 * ✅ [pwsh](https://learn.microsoft.com/en-us/powershell/) - The Readline module offers support for convenient vim support. Add this to your `$Profile`:
   *
    ```
     Import-Module PSReadLine
     # enable Vim on the shell and as editor
     $OnViModeChange = [scriptblock]{
        if ($args[0] -eq 'Command') {
            # Set the cursor to a blinking block.
            Write-Host -NoNewLine "`e[2 q"
        }
        else {
            # Set the cursor to a blinking line.
            Write-Host -NoNewLine "`e[5 q"
        }
     }

     Set-PsReadLineOption -EditMode Vi
     Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $OnViModeChange
    ```
   * This was collected from many github issues and posts. Powershell 5.1 for one reason or another refuses to change the cursor so the script to give
    feedback does not work. Just remove it and it will still work, just no feedback of the mode you're in.

## System-wide
* :white_check_mark: [vim-anywhere](https://github.com/cknadler/vim-anywhere) - Spawn a vim buffer from any text input in the operating system.
* :white_check_mark: [Homerow](https://www.homerow.app/) - Add vim-like navigation to any macOS app.
* :white_check_mark: [kindaVim](https://kindavim.app/) - Get vim-like navigation in any macOS text field.
* :white_check_mark: [sketchyvim](https://github.com/FelixKratz/SketchyVim) - Get vim-like navigation in any macOS text field.
* :white_check_mark: [athame](https://github.com/ardagnir/athame) - Patches your shell to add full Vim support by routing your keystrokes through an actual Vim process.
* :white_check_mark: ~[kommand](https://www.autohotkey.com/board/topic/42706-kommand-a-cross-application-vim-like-hot-key-solution/)~ - A cross-application Vim-like hot key solution.
* :white_check_mark: [win-vind](https://github.com/pit-ray/win-vind) - Control the Windows GUI in the same way as Vim.

## System Tools
* :white_check_mark: [htop-vim](https://aur.archlinux.org/packages/htop-vim/) - A patched version the [htop](https://htop.dev/) interactive process viewer that has vim keybindings for navigation.
* :white_check_mark: [btop++](https://github.com/aristocratos/btop) - A resource monitor. To enable Vim-navigation, set in the config file:
  * ```ini
    vim_keys = True
    ```
* :white_check_mark: [aptitude](https://wiki.debian.org/Aptitude) - ncurses interface for APT on Debian-derived Linux distros. The [keybindings](https://www.debian.org/doc/manuals/aptitude/ch02s05s02.en.html) are already vim-like.
* :white_check_mark: [CopyQ](https://github.com/hluk/CopyQ) - A clipboard manager with basic Vim-like navigation.
* :white_check_mark: [lnav](https://lnav.org/) - A log viewer with minimal Vim-like [navigation](https://docs.lnav.org/en/latest/hotkeys.html).


## Task Management
* :white_check_mark: [TuDu](https://code.meskio.net/tudu/) - A comand line interface to manage hierarchical todos.
* :white_check_mark: [calcurse](https://calcurse.org/) - A calendar and scheduling application for the command line with default [vim-like keybindings](http://culot.org/calcurse/manual_en.html#options_keys).
* :white_check_mark: [kabmat](https://github.com/PlankCipher/kabmat) - TUI for managing kanban boards with Vim-like keybindings.
* :white_check_mark: [taskell](https://taskell.app/) - Command-line Kanban board/task management.
* :white_check_mark: [vit](https://github.com/vit-project/vit) - An TUI for [Taskwarrior](https://taskwarrior.org/) Vim-like keybindings.

## Terminal Emulators
* :white_check_mark: [tmux](https://github.com/tmux/tmux) - the terminal multiplexer, superseding GNU Screen.
  * <details>
      <summary>~/.config/tmux/tmux.conf</summary>

      ```ini
       set-option -g status-keys vi		# Use Vi bindings in tmux command prompt.
       set-window-option -g mode-keys vi	# Use Vi bindings in copy and choice mode.

       # Optional: some Vi-like navigation for smart pane switching.
       # NOTE this could override default keybindigns like <prefix>-l.
       bind h select-pane -L
       bind j select-pane -D
       bind k select-pane -U
       bind l select-pane -R
       ```
    </details>
* :white_check_mark: [alacritty](https://github.com/alacritty/alacritty) - A cross-platform, OpenGL terminal emulator with Vim-like keybindings by default.
* [rxvt-unicode](https://wiki.archlinux.org/title/rxvt-unicode) - The Unicode fork of the rxvt terminal emulator.
  * :heavy_plus_sign: [urxvt-vim-scrollback](https://github.com/ervandew/urxvt-vim-scrollback) - Provides Vim-like scrollback mode and pasting.
* :white_check_mark: ~[Termine](https://github.com/thestinger/termite)~ - See alacritty instead.

## Text Editors
We know that Vi-[clones](http://www.linfo.org/vi/clones.html)/derivatives have Vi(m) keybindings so let's skip those here (Vim, NeoVim, vile, elvis, nvi, vis, pyvim, jVi, ex-vi ...)

* Emacs
  * :white_check_mark: [evil-mode](https://www.emacswiki.org/emacs/Evil) - Extensible vi layer for Emacs.
  * :heavy_plus_sign: [spacemacs](https://www.spacemacs.org/) - Emacs configuration package that improves the Emacs experience, including vim bindings via `evil-mode`. Features a vim-like leader (space) for common commands.
  * :heavy_plus_sign: [doom emacs](https://github.com/doomemacs/doomemacs) - Configuration package that provides a similar experience to Spacemacs (including `evil-mode`. Also implements spacebar-as-leader-key.
  * :heavy_plus_sign: ~~[Vimpulse](https://www.emacswiki.org/emacs/Vimpulse)~~ Deprecated, check out Evil.
  * :heavy_plus_sign: ~~[Vim Mode](https://www.emacswiki.org/emacs/VimMode)~~ Deprecated, check out Evil.
* :white_check_mark: [Sublime Text](https://www.sublimetext.com/) has a bult-in [Vintage mode](https://www.sublimetext.com/docs/vintage.html) that can be enabled.
  * :heavy_plus_sign: [NeoVintageous](https://github.com/NeoVintageous/NeoVintageous) - An advanced Vim emulation layer.
  * :heavy_plus_sign: ~[Vintageous](https://github.com/guillermooo/Vintageous)~
  * :heavy_plus_sign: ~[VintageEx](https://github.com/SublimeText/VintageEx)~
  * :heavy_plus_sign: ~[Six](https://packagecontrol.io/packages/Six)~
* QTextEdit/QPlainTextEdit
  * :heavy_plus_sign: [FakeVim](https://github.com/hluk/FakeVim)
* :white_check_mark: [amp](https://amp.rs/) - A modal terminal text.
* :white_check_mark: [kakoune](https://github.com/mawww/kakoune) - A modal text editor inspired by Vim-navigation.
* :white_check_mark: [moe](https://editor.moe/) - A modal text editor with a Vim-like mode.
* :white_check_mark: [kate](https://kate-editor.org/) - A text editor with a [Vi-mode](https://kate-editor.org/kate-vi-mode/).
* :white_check_mark: [Komodo Edit](https://www.activestate.com/products/komodo-edit/) - Has [Vi emulation](https://www.activestate.com/blog/komodos-vi-emulation/).
* :white_check_mark: [rim](https://github.com/mathall/rim) - The aspiring Vim-like text editor.
* :white_check_mark: [slickedit](https://www.slickedit.com/) - A Code editor with [Vim emulation](https://www.slickedit.com/images/stories/products/slickedit/emulation_charts/Vim_Emulation.pdf).
* :white_check_mark: [vy](https://github.com/vyapp/vy) - A Vim-like in python made from scratch.
* :white_check_mark: [WinVi](https://winvi.de/en/) - A Windows text editor highly compatible with Vi.
* :white_check_mark: [VNote](http://app.vnote.fun/en_us/) - A note-taking editor with Vi mode and Vi-like navigation.
* :white_check_mark: ~[oni2 (onivim)](https://github.com/onivim/oni2)~ - [Deprecated](https://github.com/onivim/oni2/issues/3861).
* :white_check_mark: ~[editra](https://github.com/cjprecord/editra)~ - Developers Text Editor, with a Vi-mode.
* [Inkdrop](https://www.inkdrop.app/) - A Markdown note taking app.
  * :heavy_plus_sign: [inkdrop-vim](https://github.com/inkdropapp/inkdrop-vim) - Provides a Vim modal control for Inkdrop.
* :white_check_mark: [GNOME Text Editor](https://gitlab.gnome.org/GNOME/gnome-text-editor) - If it's [installed](https://askubuntu.com/a/1439846) with APT, enable the Vim mode by running this in a Terminal:
  * ```bash
    $ gsettings set org.gnome.TextEditor keybindings vim
    ```
* ~Atom~ - [Discontinued](https://github.blog/2022-06-08-sunsetting-atom/)
  * :heavy_plus_sign: ![atom-vim-mode-plus](https://github.com/atom/vim-mode)~
  * :heavy_plus_sign: ~[atom-vim-mode-plus](https://github.com/t9md/atom-vim-mode-plus)~

## Web browsers
* :white_check_mark: [qutebrowser](https://qutebrowser.org/)
* :white_check_mark: [Vieb](https://vieb.dev/) - Vim bindings for the web by design (electron based)
* Firefox
  * :heavy_plus_sign: [Tridactyl](https://addons.mozilla.org/en-US/firefox/addon/tridactyl-vim/)
  * :heavy_plus_sign: [Vimium-FF](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
  * :heavy_plus_sign: [Vimium C](https://addons.mozilla.org/en-US/firefox/addon/vimium-c/)
  * :heavy_plus_sign: [Surfingkeys](https://addons.mozilla.org/en-US/firefox/addon/surfingkeys_ff/)
  * :heavy_plus_sign: [Vim Vixen](https://addons.mozilla.org/en-US/firefox/addon/vim-vixen/)
  * :heavy_plus_sign: [vimkeybindings](https://addons.mozilla.org/en-US/firefox/addon/vimkeybindings/) - Small addon adding just basic keyboard navigation shortcuts.
  * :heavy_plus_sign: [Krabby](https://krabby.netlify.app/) - keyboard-based navigation inspired by Kakoune.
  * :heavy_plus_sign: ~[Vimperator](http://vimperator.org/vimperator)~ - See Tridactyl instead
  * :heavy_plus_sign: ~[Pentadactyl](https://en.wikipedia.org/wiki/Pentadactyl)~ - See Tridactyl instead
* Chrome
  * :heavy_plus_sign: [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
  * :heavy_plus_sign: [Vimium C](https://chrome.google.com/webstore/detail/vimium-c-all-by-keyboard/hfjbmagddngcpeloejdejnfgbamkjaeg?hl=en)
  * :heavy_plus_sign: [cVim](https://chrome.google.com/webstore/detail/cvim/ihlenndgcmojhcghmfjfneahoeklbjjh)
  * :heavy_plus_sign: [Surfingkeys](https://chrome.google.com/webstore/detail/surfingkeys/gfbliohnnapiefjpjlpjnehglfpaknnc)
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.
  * :heavy_plus_sign: [Krabby](https://krabby.netlify.app/) - keyboard-based navigation inspired by Kakoune.
  * :heavy_plus_sign: ~[ViChrome](https://github.com/k2nr/ViChrome)~
  * :heavy_plus_sign: ~[vrome](https://github.com/jinzhu/vrome)~
* Safari
  * :heavy_plus_sign: [Surfingkeys](https://apps.apple.com/us/app/surfingkeys/id1609752330)
  * :heavy_plus_sign: [Vimari](https://apps.apple.com/us/app/vimari/id1480933944?ls=1&mt=12) -  A Safari [extension](https://televator.net/vimari/) that provides vim style keyboard based navigation, based on Vimium.
* Edge
  * :heavy_plus_sign: [Surfingkeys](https://microsoftedge.microsoft.com/addons/detail/surfingkeys/kgnghhfkloifoabeaobjkgagcecbnppg)
* Opera
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.
  * :heavy_plus_sign: ~[VimOperate](https://github.com/rscircus/VimOperate)~
* :white_check_mark: [w3m](https://w3m.sourceforge.net/) - A text-based web browser with some Vim-like [keyboard shortcuts](https://cheatsheetfactory.geekyhacker.com/linux/w3m).
* :white_check_mark: [netrik](https://netrik.sourceforge.net/) - A text-based web browser with Vi-inspired keyboard commands.
* :white_check_mark: [lynx](https://lynx.invisible-island.net/) - A customizable text-based browser and the oldest web browser still being maintained. You can enable Vi-like movement by passing `-vikeys` or add an alias in your `.bashrc`:
  * ```bash
    alias lynx='lynx -vikeys'
    ```
* :white_check_mark: [vimb](https://fanglingsu.github.io/vimb/) - The vim like browser.
* :white_check_mark: [jumanji](https://pwmt.org/projects/jumanji) - A keyboard driven web browser.
* :white_check_mark: [luakit](https://luakit.github.io/) - A highly configurable browser with [Vim-like](https://wiki.archlinux.org/title/Luakit) navigation.
* :white_check_mark: [nyxt](https://github.com/atlas-engineer/nyxt) - A keyboard-driven web browser inspired by Vim and Emacs.
* :white_check_mark: [wyeb](https://github.com/jun7/wyeb) - A Vim-like webkit2gtk web browser.
* :white_check_mark: [bombadillo](https://bombadillo.colorfield.space/) - A non-web browser but for other protocols e.g. Gopher, Gemini, Finger.
* :white_check_mark: ~[Vimprobable](https://github.com/ThomasAdam/vimprobable)~
* :white_check_mark: ~[dwb](https://github.com/diab0l/dwb)~ - See qutebrowser instead.
* :white_check_mark: ~[uzbl](https://www.uzbl.org/)~
* :white_check_mark: ~[xombrero](https://github.com/conformal/xombrero)~ - A minimalist web browser with vi-like keyboard commands.
* :white_check_mark: ~[Cream-Browser](https://github.com/linkdd/cream-browser)~ - A browser developped in C with GTK+ having the same interface as Vimperator.
* Various
  * :heavy_plus_sign: [firenvim](https://github.com/glacambre/firenvim) - Transform text areas into a neovim instance that inherits your existing config (keymaps, plugins, etc).

## Window Managers
* :white_check_mark: [howm](https://github.com/HarveyHunt/howm) - A lightweight, X11 tiling window manager that behaves like vim.
* :white_check_mark: [i3wm](https://i3wm.org/) - A tilling window manager with Vim-like [keyboard shortcuts](https://i3wm.org/docs/refcard.html).
* :white_check_mark: [sway](https://swaywm.org/) - A drop-in replacement for i3 for Wayland.
* :white_check_mark: [wmii](https://github.com/0intro/wmii) - A small and scriptable window manager that can be configured with Vim-like [keyboard shortcuts](https://wiki.debian.org/Wmii#Basic_Configuration).
* :white_check_mark: [euclid-wm](https://code.google.com/archive/p/euclid-wm/) - A minimalist tiling wm with default Vim-like keybindings.
* :white_check_mark: [howm](https://github.com/HarveyHunt/howm) - A lightweight tiling X11 window manager that mimics vi.
* :white_check_mark: [AppGrid](https://github.com/mjolnirapp/AppGrid) - A window manager for macOS with Vim-like hotkeys.


## WYSIWYG Editors
* :white_check_mark: [zettlr](https://www.zettlr.com) - Markdown document editor on the fly, vim+emacs keybindings.
* :white_check_mark: [VNote](https://vnotex.github.io/vnote/en_us/) - A note taking app.


# Contributing
This is a collaborative list -- please fork and make a pull request to add or improve the entries here! The initial contributions by the repo owner is limited to the tools he uses or knows of, so there is a lot of room for further additions here!

* Please:
  * add links to references for configuration if you have any.
  * use [XDG paths](https://wiki.archlinux.org/title/XDG_Base_Directory) when possible.
* It's okay to list deprecated or unmaintained software for the sake of completness, but let's put a ~~strigke-through~~ on them.

# Acknowledgments
Hats off to the authors of these articles that helped kick-start this list together with the author's own experiences: [#1](https://www.reddit.com/r/vim/comments/3tluqr/my_list_of_applications_with_vi_keybindings/), [#2](https://reversed.top/2016-08-13/big-list-of-vim-like-software/), [#3](https://www.slant.co/topics/7131/~programming-text-editors-with-vim-key-bindings), [#4](https://vim.reversed.top/), [#5](https://vim.fandom.com/wiki/Vim_key_bindings_for_web_browsers).
