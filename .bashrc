# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

PROMPT_DIRTRIM=3
prompt_command () {
    PS1='$PWD $ '
}
PROMPT_COMMAND=prompt_command

# User specific aliases and functions
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Emacs as default editor
export EDITOR=emacsclient


################################################################################
# Mentor
export PATH=$PATH:/usr/mentor/questasim/linux_x86_64
export MGLS_LICENSE_FILE=/usr/mentor/mentor.dat
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/mentor/questasim/lib/libfreetype.so.6.10.1
alias vsim='LD_PRELOAD=/usr/mentor/questasim/lib/libfreetype.so.6.10.1 /usr/mentor/questasim/linux_x86_64/vsim'

################################################################################
# Synopsy
export PATH=$PATH:/m2_ssd/Workspace/EdaUtils/vcs-mx/vcs-mx/O-2018.09-SP2-11/bin
export VCS_HOME=/m2_ssd/Workspace/EdaUtils/vcs-mx/vcs-mx/O-2018.09-SP2-11
export NOVAS_HOME=/home/tieovi/EDA/Synopsys/K-2015.09-SP1-1/
export PATH=$PATH:/home/tieovi/EDA/Synopsys/K-2015.09-SP1-1/bin
export NOVAS_RC=/home/tieovi/Utils/Verdi/novas.rc
export LM_LICENSE_FILE=27000@thinkpad
export VCS_ARCH_OVERRIDE=linux

alias vcs='vcs -full64'
alias dve='dve -full64'
alias urg='urg -full64'

alias snps_init='~/EDA/Synopsys/SCL_2018.6/scl/2018.06/linux64/bin/lmgrd -c ~/Dropbox/Synopsys.dat.new'

################################################################################
# Xilinx
# alias ctagsC='ctags -e -R --c++-kinds=+p --fields=+iaS --extra=+q /opt/Xilinx/Vivado_HLS/2015.1/include/'
alias  peta_init="source /home/tieovi/EDA/Xilinx/settings.sh"
# Vivado version 2018.3
alias vivado_init='source /tools/Xilinx/Vivado/2018.3/settings64.sh'
# Add java and xjava home
export X_JAVA_HOME="/usr"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dsun.java2d.xrender=true"

################################################################################
# MATLAB
export PATH=$PATH:/usr/local/MATLAB/MATLAB_Production_Server/R2015a/bin

# Sopcast
export PATH=$PATH:/home/tieovi/Utils

# Add for OpenCV
export PKG_CONFIG_PATH=/usr/lib/pkgconfig/

################################################################################
# SVUnit
export SVUNIT_INSTALL=/m2_ssd/Workspace/EdaUtils/svunit-code-master
export PATH=$PATH:$SVUNIT_INSTALL"/bin"

################################################################################
# Git Repository
export OH_HOME=$PWD
################################################################################
# rar
PATH=$PATH:$HOME/bin:/opt/rar/

###############################################################################
# Alias for quick command                                                     #
alias dp_on='xrandr --output DP1 --mode 1920x1080 --left-of eDP1'  # Fedora
alias dp_off='xrandr --output DP1 --off'

alias freq_down='sudo cpufreq-set -u 1.6GHz'
alias freq_up='sudo cpufreq-set -u 3.0GHz'
alias touchpad_off='xinput set-prop 13 "Device Enabled" 0'
alias touchpad_on='xinput set-prop 13 "Device Enabled" 1'
# Oxford Advanced Leaner dictionary
alias oald8='cd ~/oald8 && ./run-oald8.sh &'
# Alias emacsclient
alias ec='emacsclient'
alias keyboard_speed_set='xset r rate 150 50'
alias net_off='nmcli networking off'
alias net_on='nmcli networking on'
# alias for mouting
alias iso_mount='sudo mount -t iso9660 -o loop'

###############################################################################
# Worrking directory shortcut                                                 #

randpw(){
    < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-10};echo;
}
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

################################################################################
# SystemC home
# export SYSTEMC_HOME=/usr/local/systemc-2.3.1
# sample to compile SystemC
# g++ -I. -I$SYSTEMC_HOME/include -L. -L$SYSTEMC_HOME/lib-linux64 -Wl,-rpath=$SYSTEMC_HOME/lib-linux64 -o hello hello.cpp -lsystemc -lm


################################################################################
# Mis
PROMPT_COMMAND='echo -en "\033]0; $("pwd") \a"'
export WORKSPACE=/m2_ssd/Workspace
export PATH=$PATH:~/Utils/thunderbird

# Set terminal title
function termtitle() {
  if [[ -z "$ORIG" ]]; then
    ORIG=$PS1
  fi
  TITLE="\[\e]2;$*\a\]"
  PS1=${ORIG}${TITLE}
}

# https://askubuntu.com/questions/511633/terminal-tab-not-opening-in-same-directory
. /etc/profile.d/vte.sh
