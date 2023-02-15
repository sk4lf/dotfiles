#!/bin/zsh
#
#--------------------------------------------------
#
# This script is aimed to keep my system up to date
#
#--------------------------------------------------

# Colors
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

# Variables

HOMEDIR=/Users/sk4lf/
ZSHDIR=$HOMEDIR/.oh-my-zsh/
LOGDIR=$HOMEDIR/log/
LOGFILE=up2date.sh.log
LOG=$LOGDIR$LOGFILE

# Print date

echo "${GREEN}----------------------------${NC}" | tee -a $LOG
date | tee -a $LOG
echo "${GREEN}----------------------------${NC}" | tee -a $LOG

# Log collection

mkdir -p $LOGDIR
touch $LOG

# Brew

echo "${PURPLE}Brew Update${NC}" | tee -a $LOG
brew update | tee -a $LOG && 
echo "${PURPLE}Brew Upgrade${NC}" | tee -a $LOG
brew upgrade | tee -a $LOG

# Brew cask

echo "${PURPLE}Brew Upgrade Cask${NC}" | tee -a $LOG
brew upgrade --cask | tee -a $LOG
brew upgrade --cask --greedy | tee -a $LOG


#oh-my-zsh
#removed because using fish now
#echo "${PURPLE}oh-my-zsh${NC}" | tee -a $LOG
#sh $ZSHDIR/tools/upgrade.sh | tee -a $LOG
