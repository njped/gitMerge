# sh math.sh add in order to activate the case in terminal [add] is the case name

rand1=$(echo $(($RANDOM % 25)))
rand2=$(echo $(($RANDOM % 25)))
sum=$(echo $((${rand1} + ${rand2})))

function addition() {
  green='\033[0;32m'
  gray='\033[0;37m'
  rand1=$(echo $(($RANDOM % 25)))
  rand2=$(echo $(($RANDOM % 25)))
  sum=$(echo $((${rand1} + ${rand2})))

  echo "What is" ${rand1} + ${rand2} "? " && read answer

  if [[ ${answer} == ${sum} ]]; then
    echo -e ${green}"correct"${gray}
    score+=(1)
    total=${#score[@]}
    echo "Current Score : ${total}"
  else
    echo "incorrect"
    total=${#score[@]}
    echo "Final Score : ${total}"
    exit 1
  fi

  # echo "`echo $'\n'`"
  echo -e ${green}"Game Time! Taking Score!"${gray}
  # echo "`echo $'\n'`"
  addition
}

# while true; do
# done

case ${1} in

add)
  addition
  ;;

  # PATTERN_2)
  #   STATEMENTS
  #   ;;

  # PATTERN_N)
  #   STATEMENTS
  #   ;;

  # *)
  #   STATEMENTS
  #   ;;
esac