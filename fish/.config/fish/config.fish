### $GOPATH and $PATH
set -x GOPATH ~/Go
set -x PATH $GOPATH/bin $PATH

### Make GnuPG gpg-agent ssh-agent thing work
set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
set -gx GPG_TTY (tty)
gpg-connect-agent updatestartuptty /bye > /dev/null

### EDITOR, VISUAL, TERMINAL and PAGER
set -gx EDITOR kak
set -gx VISUAL kak
set -gx TERMINAL alacritty
set -gx PAGER less

### Scaling for HiDPI
set -gx QT_AUTO_SCREEN_SCALE_FACTOR 1
set -gx GDK_SCALE 2
set -gx GDK_DPI_SCALE 0.5

### Other Go stuff
set -gx GO111MODULE on

### Fish greeting
set -g fish_greeting ""

### Start X at login
if status is-login
    if [ (tty) = "/dev/tty1" ]
        exec startx -- -keeptty
    end
end
