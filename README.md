# Vim Keybindings Everywhere - The Ultimate List [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Get%20Vim%20keybindings%20everywhere%20-%20the%20ultimate%20list%20of%20programs%20with%20native%20support%20or%20extensions%20providing%20it&url=https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list&via=erik_westrup&hashtags=vim,keybindings,list)
[![<magic-marker-nbr-native>](https://img.shields.io/badge/Native%20programs%20listed-43-brightgreen)](#)
[![<magic-marker-nbr-extensions>](https://img.shields.io/badge/Extensions%20listed-38-blue)](#)
[![OSS Lifecycle](https://img.shields.io/osslifecycle/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/Netflix/osstracker)
[![License](https://img.shields.io/github/license/erikw/vim-keybindings-everywhere-the-ultimate-list?color=lightgrey)](LICENSE.txt)
[![Bump count of tools listed](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/actions/workflows/bump_tool_count.yml/badge.svg)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/actions/workflows/bump_tool_count.yml)


[![Contributors](https://img.shields.io/github/contributors/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors) including these top contributors:<br>
<a href = "https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors">
<img src = "https://contrib.rocks/image?repo=erikw/vim-keybindings-everywhere-the-ultimate-list&max=24"/>
</a>

**:rocket: PRs are welcome**

# What is this list?
Once your fingers have [learned](https://www.thejach.com/view/2012/07/vims_learning_curve_is_wrong) to speak Vim, they don't want to speak anything else! It's simply a very effective way of navigating, creating and editing text. Thus, it's natural that one would like to get Vim-like keybindings in as many programs we use as possible.

The intention of this collaborative list is to:
* learn which programs/apps that you already use which you can enhance with Vim keybindings. Search in your browser with `ctrl/cmd + f`.
* discover new programs that support Vim keybindings. In the need for a new file manager? Why not get one that has Vim keybindings?
* be up-to-date and alive -- add new programs and extensions as they evolve!

There are of course already lists like this one floating around on the internet (see [Acknowledgments](#Acknowledgments)). While they are great, the issue is that they are not up-to-date with the latest developments. There are Vim-emulator add-ons being developed all the time! This is why this collaborative list was created.

(yes, technically it is **vi**-like keybindings we talk about here, but most people know and Google for vim, thus vim is used here instead of vi).

# The Ultimate Vim Keybinding List
The following symbols are used with each list item to make it clearer what kind of Vim keybindings support exist
* :white_check_mark: - built-in support (possibly via a setting)
* :heavy_plus_sign: - via addon/extension

Terminology:
* [TUI](https://itlaw.fandom.com/wiki/Text_user_interface) - Text User Interface

**Tip**: navigate this file easily by using GitHub's built-in Markdown Table of Contents in the top left corner:
<a href="#" title="GitHub built-in Table of Contents for markdown files."><img src="img/github_md_toc.png" width="256" alt="ToC"></a>


## General
* :white_check_mark: [vim-anywhere](https://github.com/cknadler/vim-anywhere) - spawn a vim buffer from any text input in the operating system.
* :white_check_mark: [Homerow](https://www.homerow.app/) - add vim-like navigation to any macOS app.
* :white_check_mark: [kindaVim](https://kindavim.app/) - get vim-like navigation in any macOS text field.
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
* [irssi](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) - the popular IRC client.
  * :heavy_plus_sign: [vim_mode](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) plugin.

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
* :white_check_mark: [LINQPad](https://www.linqpad.net/) - The .NET Programmer’s Playground. vi mode available in settings. Go to Edit > Preferences > General UI to enable.

* [Azure Data Studio](https://azure.microsoft.com/en-us/products/data-studio/) - Database tool similar to Microsoft SQL Server Management Studio. Supports VSCode extensions.
  * :heavy_plus_sign: [Vim plugin](https://github.com/VSCodeVim/Vim) - Cannot be installed directly in the plugin section. Go to [Vim plugin release page](https://github.com/VSCodeVim/Vim/releases) and download `.vsix` file. Then open the file in Azure Data Studio. If you see error that the extension is not compatible with current VS Code engine version try older release.

## Debuggers
* :white_check_mark: [cgdb](http://cgdb.github.io/) - a curses interface on top of the GDB debuger with keybindings modeled after vim.
* :white_check_mark: [vimpdb](https://github.com/gotcha/vimpdb) - An integration of the python debugger `pdb` and vim.

## E-Mail
* :white_check_mark: [Mutt](http://www.mutt.org/) - The vim of email, a TUI email client
* :white_check_mark: [NeoMutt](https://neomutt.org/) - A fork of mutt, intendted to reignite the development.
* [Thunderbird](https://www.thunderbird.net/en-US/)
  * :heavy_plus_sign: [Muttator](https://addons.thunderbird.net/en-US/thunderbird/addon/muttator/) - Like Vimperator but for thunderbird.

## File Management
* :white_check_mark: [vifm](https://vifm.info/) - TUI file manager with vi keybindings.
* :white_check_mark: [ranger](https://github.com/ranger/ranger) - Another TUI file manager.
* :white_check_mark: [lf](https://github.com/gokcehan/lf) - TUI file manager similar to ranger.
* :white_check_mark: [ncdu](https://dev.yorhel.nl/ncdu) - ncurses disk usage explorer.
* [Total Commander](https://www.ghisler.com/)
  * :heavy_plus_sign: [ViATc](https://github.com/magicstep/ViATc-English) - adds a Vim mode to Total Commander.

## IDEs
* [Jetbrain's IDEs](https://www.jetbrains.com/products/#type=ide) (Intellij, PYCharm, PHPStorm, WebStorm, ...)
  * :heavy_plus_sign: [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim) - install it directly from the plugin section in the IDE settings.
* [Visual Studio Code](https://code.visualstudio.com/)
  * :heavy_plus_sign: [Vim plugin](https://github.com/VSCodeVim/Vim) - install it directly in the plugin section in the IDE settings.
  * :heavy_plus_sign: [NVim plugin](https://github.com/vscode-neovim/vscode-neovim) - alternative to the VIM plugin, uses a full nvim instance in the background instead of just emulating VIM
* :white_check_mark: [XCode](https://developer.apple.com/xcode/) - Apple's IDE. Vim mode can be enabled under the "Editor" menu without use of plugins.
  * :heavy_plus_sign: ~[XVim2](https://github.com/XVimProject/XVim2)~ plugin. Deprecated, use native keybindings (above) instead.
* [Eclipse](https://www.eclipse.org/ide/)
  * :heavy_plus_sign: [vrapper-vim](https://marketplace.eclipse.org/content/vrapper-vim)
  * :heavy_plus_sign: [viplugin](https://marketplace.eclipse.org/content/viplugin)
  * :heavy_plus_sign: [viable](https://marketplace.eclipse.org/content/viable-vim-eclipse)
* [Visual Studio 2015 and above](https://visualstudio.microsoft.com/)
  * :heavy_plus_sign: [VsVim (Visual Studio 2015-2019)](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim) - install through the extensions inside Visual Studio
  * :heavy_plus_sign: [VsVim 2022 (Visual Studio 2022)](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim2022Preview) - install through the extensions inside Visual Studio
* [Geany](https://www.geany.org/)
  * :heavy_plus_sign: [vimode](https://github.com/geany/geany-plugins/blob/master/vimode/README) - The vimode plugin can be enabled from the settings.

## Music players
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
* :white_check_mark: [vimpc](https://github.com/boysetsfrog/vimpc) - A console mpd client that provides a vim-like interface. Default keybindings in the [help file](https://github.com/boysetsfrog/vimpc/blob/master/doc/help.txt)

## News/RSS Readers
* :heavy_plus_sign: [Newsboat](https://newsboat.org/) - RSS/Atom reader with a TUI.
* :heavy_plus_sign: ~~[Newsbeuter](https://github.com/akrennmair/newsbeuter)~~ - Unmaintained, see Newsboat./

## PDF viewers
* :white_check_mark: [apvlv](https://github.com/naihe2010/apvlv) - A PDF Viewer that acts Like Vim
* :white_check_mark: [MuPDF](https://mupdf.com) - PDF and ebook reader with [vim keybindings](http://tuxdiary.com/2015/04/18/mupdf/).
* :white_check_mark: [zathura](https://pwmt.org/projects/zathura) - Document reader, vim-keybindings, partly based on MuPDF. Linux only.
* :white_check_mark: [SumatraPDF](https://www.sumatrapdfreader.org/free-pdf-reader) - Document reader, vim-keybindings. Windows only.
* Preview.app - macOS native document viewer:
  * :heavy_plus_sign: [preview-vim](https://github.com/xrisk/preview-vim) - adds vim-like keybindings, works via Karabiner Elements.

## Personal Knowledge Management
* :white_check_mark: [Obsidian](https://obsidian.md/) - under "Editor" options
* [Logseq](https://logseq.com/)
  * :heavy_plus_sign: [logseq-plugin-vim-shortcuts](https://github.com/vipzhicheng/logseq-plugin-vim-shortcuts) - normal mode commands deal with whole blocks, editing text is only possible in edit mode

## Social
* :white_check_mark: [matui](https://github.com/pkulak/matui) - a Matrix TUI with vim-like navigation.

## Source Code Management
* :white_check_mark: [git](https://git-scm.com/) - Nothing's better than the real deal. Tell git to use vim/nvim when editing commit messages, interactive rebase etc. by putting in your `~/.config/git/config`:
  * ```ini
    [user]
        editor = vim
    ```
* :white_check_mark: [tig](https://jonas.github.io/tig/) - Text interface for git. Works mostly like vim out of the box, but can be enhanced:
  * <details>
      <summary>~/.config/tig/config</summary>

      ```
      bind generic <Ctrl-f>   scroll-page-down
      bind generic <Ctrl-b>   scroll-page-up
      bind generic g move-first-line			# Move cursor to top.
      bind generic G move-last-line			# Move cursor to bottom.

      bind main B :toggle commit-title-graph		# Rebind G to B.
      bind main G move-last-line			# Move cursor to bottom.
      ```
    </details>
* :white_check_mark: [hg/mercurical](https://www.mercurial-scm.org/) - Put in your `~/.config/hg/hgrc`:
  * ```ini
    [ui]
        editor = vim
    ```


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
* :white_check_mark: [fish](https://fishshell.com/) - just add to your `~/.config/fish/config.fish` ([reference](https://stackoverflow.com/a/28445450/265508)):
  * ```bash
    fish_vi_key_bindings
    ```
* :white_check_mark: [tcsh](https://www.tcsh.org/) - put this in your ksh startup file e.g. `~/.kshrc` ([reference](https://www.oreilly.com/library/view/mac-os-x/0596004583/ch04s02.html)):
  * ```bash
    bindkey -v
    ```
* :white_check_mark: [ksh](https://en.wikipedia.org/wiki/KornShell) - put this in your ksh startup file e.g. `~/.kshrc`:
  * ```bash
    set -o vi
    ```
* :white_check_mark: [nushell](https://www.nushell.sh) - put this in your config file e.g. `$nu.config-path`:
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


## System Tools
* :white_check_mark: [htop-vim](https://aur.archlinux.org/packages/htop-vim/) - A patched version the [htop](https://htop.dev/) interactive process viewer that has vim keybindings for navigation.
* :white_check_mark: [aptitude](https://wiki.debian.org/Aptitude) - ncurses interface for APT on Debian-derived Linux distros. The [keybindings](https://www.debian.org/doc/manuals/aptitude/ch02s05s02.en.html) are already vim-like.

## Text Editors
We know that Vi-[clones](http://www.linfo.org/vi/clones.html)/derivatives have Vi(m) keybindings so let's skip those here (Vim, NeoVim, vile, ...)

* Atom
  * :heavy_plus_sign: [atom-vim-mode-plus](https://github.com/t9md/atom-vim-mode-plus)
* Emacs
  * :white_check_mark: [evil-mode](https://www.emacswiki.org/emacs/Evil) - Extensible vi layer for Emacs.
  * :heavy_plus_sign: [spacemacs](https://www.spacemacs.org/) - Emacs configuration package that improves the Emacs experience, including vim bindings via `evil-mode`. Features a vim-like leader (space) for common commands.
  * :heavy_plus_sign: [doom emacs](https://github.com/doomemacs/doomemacs) - Configuration package that provides a similar experience to Spacemacs (including `evil-mode`. Also implements spacebar-as-leader-key.
  * :heavy_plus_sign: ~~[Vimpulse](https://www.emacswiki.org/emacs/Vimpulse)~~ Deprecated, check out Evil.
  * :heavy_plus_sign: ~~[Vim Mode](https://www.emacswiki.org/emacs/VimMode)~~ Deprecated, check out Evil.
* :white_check_mark: [Sublime Text](https://www.sublimetext.com/) has a bult-in [Vintage mode](https://www.sublimetext.com/docs/vintage.html) that can be enabled.
  * :heavy_plus_sign: [NeoVintageous](https://github.com/NeoVintageous/NeoVintageous) - An advanced Vim emulation layer.
* :white_check_mark: ~[oni2 (onivim)](https://github.com/onivim/oni2)~ [Deprecated](https://github.com/onivim/oni2/issues/3861).


## WYSIWYG Editors

* :white_check_mark: [zettlr](https://www.zettlr.com) - Markdown document editor on the fly, vim+emacs keybindings.
* :white_check_mark: [VNote](https://vnotex.github.io/vnote/en_us/) - A note taking app.

## Web browsers
* :white_check_mark: [qutebrowser](https://qutebrowser.org/)
* :white_check_mark: [Vieb](https://vieb.dev/) - Vim bindings for the web by design (electron based)
* Firefox
  * :heavy_plus_sign: [tridactyl-vim](https://addons.mozilla.org/en-US/firefox/addon/tridactyl-vim/)
  * :heavy_plus_sign: [Vimium-FF](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/)
  * :heavy_plus_sign: [Surfingkeys](https://addons.mozilla.org/en-US/firefox/addon/surfingkeys_ff/)
  * :heavy_plus_sign: [Vim Vixen](https://addons.mozilla.org/en-US/firefox/addon/vim-vixen/)

* Chrome
  * :heavy_plus_sign: [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
  * :heavy_plus_sign: [cVim](https://chrome.google.com/webstore/detail/cvim/ihlenndgcmojhcghmfjfneahoeklbjjh)
  * :heavy_plus_sign: [Surfingkeys](https://chrome.google.com/webstore/detail/surfingkeys/gfbliohnnapiefjpjlpjnehglfpaknnc)
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.
* Safari
  * :heavy_plus_sign: [Surfingkeys](https://apps.apple.com/us/app/surfingkeys/id1609752330)
  * :heavy_plus_sign: [Vimari](https://apps.apple.com/us/app/vimari/id1480933944?ls=1&mt=12)
* Edge
  * :heavy_plus_sign: [Surfingkeys](https://microsoftedge.microsoft.com/addons/detail/surfingkeys/kgnghhfkloifoabeaobjkgagcecbnppg)
* Opera
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.
* Various
  * :heavy_plus_sign: [firenvim](https://github.com/glacambre/firenvim) - Transform text areas into a neovim instance that inherits your existing config (keymaps, plugins, etc).



# Contributing
This is a collaborative list -- please fork and make a pull request to add or improve the entries here! The initial contributions by the repo owner is limited to the tools he uses or knows of, so there is a lot of room for further additions here!

* Please:
  * add links to references for configuration if you have any.
  * use [XDG paths](https://wiki.archlinux.org/title/XDG_Base_Directory) when possible.
* It's okay to list deprecated or unmaintained software for the sake of completness, but let's put a ~~strigke-through~~ on them.

# Acknowledgments
Hats off to the authors of these articles that helped kick-start this list together with the author's own experiences: [#1](https://www.reddit.com/r/vim/comments/3tluqr/my_list_of_applications_with_vi_keybindings/), [#2](https://reversed.top/2016-08-13/big-list-of-vim-like-software/), [#3](https://www.slant.co/topics/7131/~programming-text-editors-with-vim-key-bindings), [#4](https://vim.reversed.top/).
