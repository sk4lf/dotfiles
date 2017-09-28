#!/bin/zsh
#
#--------------------------------------------------
#
# This script is aimed to keep my system up to date
#
#--------------------------------------------------

# Variables

HOMEDIR=/Users/kl/
ZSHDIR=$HOMEDIR/.oh-my-zsh/
LOGDIR=$HOMEDIR/log/
LOGFILE=up2date.sh.log
LOG=$LOGDIR$LOGFILE

# Print date

echo ----------------------------
date
echo ----------------------------

# Log collection

mkdir -p $LOGDIR
touch $LOG

# Brew
brew update | tee -a $LOG && 
brew upgrade | tee -a $LOG

#oh-my-zsh
sh $ZSHDIR/tools/upgrade.sh | tee -a $LOG
