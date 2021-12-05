# Vim Keybindings Everywhere - The Ultimate List [![Tweet](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Get%20Vim%20keybindings%20everywhere%20-%20the%20ultimate%20list%20of%20programs%20with%20native%20support%20or%20extensions%20providing%20it&url=https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list&via=erik_westrup&hashtags=vim,keybindings,list)
[![<magic-marker-nbr-native>](https://img.shields.io/badge/Native%20programs%20listed-23-brightgreen)](#)
[![<magic-marker-nbr-extensions>](https://img.shields.io/badge/Extensions%20listed-18-blue)](#)
[![OSS Lifecycle](https://img.shields.io/osslifecycle/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/Netflix/osstracker)
[![License](https://img.shields.io/github/license/erikw/vim-keybindings-everywhere-the-ultimate-list?color=lightgrey)](LICENSE.txt)


[![Contributors](https://img.shields.io/github/contributors/erikw/vim-keybindings-everywhere-the-ultimate-list)](https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors) including these top contributors:<br>
<a href = "https://github.com/erikw/vim-keybindings-everywhere-the-ultimate-list/graphs/contributors">
<img src = "https://contrib.rocks/image?repo=erikw/vim-keybindings-everywhere-the-ultimate-list&max=24"/>
</a>


# What is this list?
Once your fingers have [learned](https://www.thejach.com/view/2012/07/vims_learning_curve_is_wrong) to speak Vim, they do'nt not want to speak anything else! It's simply a very effective way of navigating, creating and editing text. Thus, it's natual that one would like to get Vim-like keybindings in as many programs we use as possible.

The intention of this collaborative list is to:
* learn which programs/apps that you already use which you can enhance with Vim keybindings. Search in your browser with `ctrl/cmd + f`.
* discover new programs that supports Vim keybindings. In the need for a new file manager? Why not get one that has Vim keybindigns?
* be up to date and alive -- add new programs and extensions as they evolve!

There are of course already lists like this one floating around on the internet (see [Acknowledgments](#Acknowledgments)). While they are great, the issue is that they are not up to date with the latest developments. There are Vim-emulator add-ons being developed all the time! This is why this collaborative list was created.

# The Ultimate Vim Keybinding List
The following symbols are used with each list item to make it clearer what kind of Vim keybindings support exist
* :white_check_mark: - built-in support (possibly via a setting)
* :heavy_plus_sign: - via addon/extension

**Tip**: navigate this file easily by using GitHub's built-in markdown Table of Contents in the top left corner:
<a href="#" title="GitHub built-in Table of Contents for markdown files."><img src="img/github_md_toc.png" width="256" alt="ToC"></a>


## General
* :white_check_mark: [vim-anywhere](https://github.com/cknadler/vim-anywhere) - spawn a vim buffer from any text input in the operating system.
* :white_check_mark: [tmux](https://github.com/tmux/tmux) - the terminal multiplexer, superseding GNU Screen.
  * <details>
      <summary>~/.config/tmux/tmux.conf</summary>
  
      ```conf
       set-option -g status-keys vi		# Use Vi bindings in tmux command prompt.
       set-window-option -g mode-keys vi	# Use Vi bindings in copy and choice mode.
       ```
    </details>
* [irssi](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) - the popular IRC client.
  * :heavy_plus_sign: [vim_mode](https://github.com/shabble/irssi-scripts/tree/master/vim-mode) plugin.

## Development
* :white_check_mark: [GHCi](https://wiki.haskell.org/GHC/GHCi) - Interactive Haskell environment. It uses [haskeline](https://hackage.haskell.org/package/haskeline) instead of readline. Put this in `~/haskeline`:
  * ```bash
    editMode: Vi
    ```
* :white_check_mark: [git](https://git-scm.com/) - Nothing's better than the real deal. Tell git to use vim/nvim when editing commit messages, interactive rebase etc. by putting in your `~/.config/git/config`:
  * ```ini
    [user]
        editor = vim
    ```
* :white_check_mark: [hg/mercurical](https://www.mercurial-scm.org/) - Put in your `~/.config/hg/hgrc`:
  * ```ini
    [ui]
    editor = vim
    ```
* :white_check_mark: [tig](https://jonas.github.io/tig/) - Text interface for git. Works mostly like vim out of the box, but can be enhanced:
  * <details>
      <summary>~/.config/tig/config</summary>
  
      ```conf
      bind generic <Ctrl-f>   scroll-page-down
      bind generic <Ctrl-b>   scroll-page-up
      bind generic g move-first-line			# Move cursor to top.
      bind generic G move-last-line			# Move cursor to bottom.

      bind main B :toggle commit-title-graph		# Rebind G to B.
      bind main G move-last-line			# Move cursor to bottom.
      ```
    </details>

## Debuggers
* :white_check_mark: [cgdb](http://cgdb.github.io/) - a curses interface on top of the GDB debuger with keybindings modeled after vim.
* :white_check_mark: [vimpdb](https://github.com/gotcha/vimpdb) - An integration of the python debugger `pdb` and vim.

## E-Mail
* :white_check_mark: [Mutt](http://www.mutt.org/) - The vim of email, a TUI email client
* :white_check_mark: [NeoMutt](https://neomutt.org/) - A fork of mutt, intendted to reignite the development.
* [Thunderbird](https://www.thunderbird.net/en-US/) 
  * :heavy_plus_sign: [Muttator](https://addons.thunderbird.net/en-US/thunderbird/addon/muttator/) - Like Vimperator but for thunderbird.

# Music players
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


## PDF viewers
* :white_check_mark: [apvlv](https://github.com/naihe2010/apvlv) - A PDF Viewer that acts Like Vim


## IDEs
* [Jetbrain's IDEs](https://www.jetbrains.com/products/#type=ide) (Intellij, PYCharm, PHPStorm, WebStorm, ...)
  * :heavy_plus_sign: [IdeaVim](https://plugins.jetbrains.com/plugin/164-ideavim) - install it directly from the plugin section in the IDE settings.
* [Visual Studio Code](https://code.visualstudio.com/)
  * :heavy_plus_sign: [Vim plugin](https://github.com/VSCodeVim/Vim) - install it directly in the plugin section in the IDE settings.
* [XCode](https://github.com/XVimProject/XVim) - Apple's IDE
  * :heavy_plus_sign: [XVim](https://github.com/XVimProject/XVim) plugin
* [Eclipse](https://www.eclipse.org/ide/)
  * :heavy_plus_sign: [vrapper-vim](https://marketplace.eclipse.org/content/vrapper-vim)
  * :heavy_plus_sign: [viplugin](https://marketplace.eclipse.org/content/viplugin)
  * :heavy_plus_sign: [viable](https://marketplace.eclipse.org/content/viable-vim-eclipse)

## Shells
* :white_check_mark: [readline](https://man.archlinux.org/man/readline.3) - Readline is a library used by many CLI programs to read input from users. By configuring readline to use vi key bindings, you automatically get it for programs like `bash`, `irb`, `octave` etc.. By default, readlines has Emacs-like keybindings but you can change that by putting this in your `~/.inputrc`:
  * ```
     set editing-mode vi
     set keymap vi-insert
  ```
* :white_check_mark: [Bash](https://www.gnu.org/software/bash/) - The preferred method is to set Vi mode in `~/.inputrc` via readline, as you will get Vi mode automatically in all programs using the library. However if you just want this for bash, put this in your bash startup file e.g. `~/.bashrc`:
  * ```bash
    set -o vi
    ```
* :white_check_mark: [zsh](https://en.wikipedia.org/wiki/Z_shell) - just put this in your ZSH startup file, most likely `~/.zshrc`:
  * ```bash
    bindkey -v
    ```
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

## System Tools
* :white_check_mark: [htop-vim](https://aur.archlinux.org/packages/htop-vim/) - A patched version the [htop](https://htop.dev/) interactive process viewer that has vim keybindings for navigation.
* :white_check_mark: [aptitude](https://wiki.debian.org/Aptitude) - ncurses interface for APT on Debian-derived Linux distros. The [keybindings](https://www.debian.org/doc/manuals/aptitude/ch02s05s02.en.html) are already vim-like.
* :white_check_mark: [ncdu](https://dev.yorhel.nl/ncdu) - ncurses disk usage explorer.



## Text Editors
We know that Vi-[clones](http://www.linfo.org/vi/clones.html)/derivatives have Vi(m) keybindings so let's skip those here (Vim, NeoVim, vile, ...)

* Atom
  * :heavy_plus_sign: [atom-vim-mode-plus](https://github.com/t9md/atom-vim-mode-plus)
* Emacs
  * :white_check_mark: [spacemacs](https://www.spacemacs.org/) - An emacs distribution with built-in Vim keybindings.
  * :heavy_plus_sign: [Vimpulse](https://www.emacswiki.org/emacs/Vimpulse)
  * :heavy_plus_sign: [Vim Mode](https://www.emacswiki.org/emacs/VimMode)
  * :heavy_plus_sign: ~~[evil-mode](https://www.emacswiki.org/emacs/Evil)~~ Deprecated, check out Vimpulse or Vim Mode.
* :white_check_mark: [oni2 (onivim)](https://github.com/onivim/oni2)

## Web browsers
* Firefox
  * :heavy_plus_sign: [tridactyl-vim](https://addons.mozilla.org/en-US/firefox/addon/tridactyl-vim/) 
  * :heavy_plus_sign: [Vimium-FF](https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/) 
* Chrome
  * :heavy_plus_sign: [Vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
  * :heavy_plus_sign: [cVim](https://chrome.google.com/webstore/detail/cvim/ihlenndgcmojhcghmfjfneahoeklbjjh)
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.
* Safari
* Edge
* Opera
  * :heavy_plus_sign: [wasavi](https://chrome.google.com/webstore/detail/wasavi/dgogifpkoilgiofhhhodbodcfgomelhe) - Transform text areas into a vi editor.


# Contributing
This is a collaborative list -- please fork and make a pull request to add or improve the entries here! The initial contributions by the repo owner is limited to the tools he uses or knows of, so there is a lot of room for further additions here!

Please:
* add links to references for configuration if you have any.
* use [XDG paths](https://wiki.archlinux.org/title/XDG_Base_Directory) when possible.
* set up the git pre-commit hook that updates the counts in the 2 badges by running:
  * ```console
    $ git clone git@github.com:erikw/vim-keybindings-everywhere-the-ultimate-list.git
    $ cd vim-keybindings-everywhere-the-ultimate-list/
    $ git config core.hooksPath .githooks
  ```
* It's okay to list deprecated or unmaintained software for the sake of completness, but let's put a ~~strigke-through~~ on them.

# Acknowledgments
Hats off to the authors of these articles that helped kick-starting this list together with the author's own experiences:  [#1](https://www.reddit.com/r/vim/comments/3tluqr/my_list_of_applications_with_vi_keybindings/), [#2](https://reversed.top/2016-08-13/big-list-of-vim-like-software/), [#3](https://www.slant.co/topics/7131/~programming-text-editors-with-vim-key-bindings).
