
if status is-interactive
    # set -U fish_greeting isda
    set -gx fish_greeting
    # set -g fish_key_bindings fish_vi_key_bindings
    set -g fish_key_bindings fish_default_key_bindings

    # Set XDG basedirs.
    # https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
    set -q XDG_CONFIG_HOME; or set -Ux XDG_CONFIG_HOME $HOME/.config
    set -q XDG_DATA_HOME; or set -Ux XDG_DATA_HOME $HOME/.local/share
    set -q XDG_CACHE_HOME; or set -Ux XDG_CACHE_HOME $HOME/.cache
    for xdgdir in $XDG_CONFIG_HOME $XDG_DATA_HOME $XDG_CACHE_HOME
        test -d $xdgdir; or mkdir -p $xdgdir
    end

    fish_add_path ~/bin/

    set -gx PAGER bat
    set -gx EDITOR nvim
    set -gx VISUAL nvim

    set -gx URI_FONT "Iosevka Nerd Font" "Geist Mono"
    set -gx URI_COLORS "Catppuccin Latte (Mauve)"

    set -gx WEZTERM_CONFIG_FILE $XDG_CONFIG_HOME/wezterm/wezterm.lua

    # shortcuts <:
    abbr fuck 'sudo (history | head -n 1)'

    abbr n nvim
    abbr lg lazygit
    abbr gid 'git config user.name ; git config user.email'

    abbr l 'eza --icons=always --hyperlink --group-directories-first'
    abbr ll 'eza --icons=always --hyperlink --group-directories-first --all --long'
    abbr lt 'eza --icons=always --hyperlink --group-directories-first --tree --all'
    abbr c chezmoi
    abbr com comtrya
    abbr ef '$EDITOR $XDG_CONFIG_HOME/fish/config.fish'
    abbr sof 'source $XDG_CONFIG_HOME/fish/config.fish'

    abbr pd prevd
    abbr nd nextd

    # Set initial working directory.
    set -g IWD $PWD

    # Colorize man pages.
    set -q LESS_TERMCAP_mb; or set -gx LESS_TERMCAP_mb (set_color -o blue)
    set -q LESS_TERMCAP_md; or set -gx LESS_TERMCAP_md (set_color -o cyan)
    set -q LESS_TERMCAP_me; or set -gx LESS_TERMCAP_me (set_color normal)
    set -q LESS_TERMCAP_so; or set -gx LESS_TERMCAP_so (set_color -b white black)
    set -q LESS_TERMCAP_se; or set -gx LESS_TERMCAP_se (set_color normal)
    set -q LESS_TERMCAP_us; or set -gx LESS_TERMCAP_us (set_color -u magenta)
    set -q LESS_TERMCAP_ue; or set -gx LESS_TERMCAP_ue (set_color normal)

    # Config for the shell prompt, pure.
    set -U pure_enable_single_line_prompt true
    set -U pure_show_jobs true
    set -U pure_show_system_time true

    eval "$(/opt/homebrew/bin/brew shellenv)"
end
