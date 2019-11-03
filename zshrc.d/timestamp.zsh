#
# timestamp.zsh
# Author: Uditha Atukorala
# Version: 2019-11-03
#

ua_strlen () {
	FOO=$1
	local zero='%([BSUbfksu]|([FB]|){*})'
	LEN=${#${(S%%)FOO//$~zero/}}
	echo $LEN
}

ua_timestamp () {
	DATE=$( date +"[%H:%M:%S]" )
	local len_right=$( ua_strlen "$DATE" )
	len_right=$(( $len_right+1 ))
	local right_start=$(($COLUMNS - $len_right))

	local len_cmd=$( ua_strlen "$@" )
	local len_prompt=$(ua_strlen "$PROMPT" )
	local len_left=$(($len_cmd+$len_prompt))

	RDATE="\033[${right_start}C ${DATE}"

	if [ $len_left -lt $right_start ]; then
		# command does not overwrite right prompt
		# ok to move up one line
		echo -e "\033[1A${RDATE}"
	else
		echo -e "${RDATE}"
	fi
}


autoload -Uz add-zsh-hook
add-zsh-hook preexec ua_timestamp

