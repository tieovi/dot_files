# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PROMPT_DIRTRIM=3

# User specific aliases and functions
export GTK_IM_MODULE=xim # Trial with Chrome
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
#export QT4_IM_MODULE=ibus
#export XIM_PROGRAM=/usr/bin/ibus-daemon
# 2016-12-31 Move to .xprofile

# Emacs as default editor
export EDITOR=emacsclient

# Modelsim
export LM_LICENSE_FILE=/opt/Mentor/modeltech/linux_x86_64/license.dat
export PATH=$PATH:/opt/Mentor/modeltech/linux_x86_64

# Altera
export PATH=$PATH:/opt/altera/quartus/bin

# Vivado version 2015.1
alias vivado_init='source /opt/Xilinx/Vivado/2015.1/settings64.sh'

# UVM_HOME
export UVM_HOME=/media/ntfs/Data/Studies/LSI/Verification_Methodology/Official/src/uvm-1.1d
# BCC
#export PATH=/opt/sparc-elf-4.4.2/bin:$PATH

# rar
PATH=$PATH:$HOME/bin:/opt/rar/

# MATLAB
export PATH=$PATH:/usr/local/MATLAB/R2015a/bin

###############################################################################
# Alias for quick command                                                     #
###############################################################################
alias hdmi_on='xrandr --output HDMI1 --mode 1280x720 --right-of LVDS1'
alias hdmi_of='xrandr --output HDMI1 --off'
alias lvds_On='xrandr --output LVDS1 --mode 1366x768'
alias lvds_Off='xrandr --output HDMI1 --mode 1280x720 --output LVDS1 --off'
alias ap_on='sudo create_ap --daemon wlan0 eth0 -c 3 arch_ap easypass'
alias ap_off='sudo killall create_ap'
alias vi='vim'
alias ctagsC='ctags -e -R --c++-kinds=+p --fields=+iaS --extra=+q /opt/Xilinx/Vivado_HLS/2015.1/include/'
alias freq_down='sudo cpufreq-set -u 1.6GHz'
alias freq_up='sudo cpufreq-set -u 3.0GHz'
# alias touchpad_off='synclient TouchpadOff=1'
# Using for Ubuntu
alias touchpad_off='xinput set-prop 15 "Device Enabled" 0'
alias touchpad_on='xinput set-prop 15 "Device Enabled" 1'
# Oxford Advanced Leaner dictionary
alias oald8='cd ~/oald8 && ./run-oald8.sh &'
###############################################################################
# Worrking directory shortcut                                                 #
###############################################################################

randpw(){
   	< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-10};echo;
}
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


# added by Anaconda2 4.0.0 installer
export PATH="/home/tlv/anaconda2/bin:$PATH"

# Add java and xjava home
export X_JAVA_HOME="/usr"
