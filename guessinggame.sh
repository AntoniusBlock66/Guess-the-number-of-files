echo "guess the number of files in the current directory (or type 'x' to exit)"

function game_loop {
  arr=( * )
  correct_answer=${#arr[@]}
  end_loop=false
  re='^[0-9]+$'

  while [[ "$end_loop" != "true" ]]
  do
    read response
    if [[ $response == "x" ]]
    then
      echo "goodbye"
      end_loop=true
    elif ! [[ $response =~ $re ]] 
    then
      echo "your input is not a number"
    elif [[ $correct_answer -eq $response ]]
    then
      echo "congrats! you found it!" 
      end_loop=true
    elif [[ $response -gt $correct_answer ]]
    then
      echo "$response is too large.. go lower"
    elif [[ $response -lt $correct_answer ]]
    then
      echo "$response is too low.. go higher"
    else
      echo "I'm not sure what happened :/"
      end_loop=true
    fi
  done
}

game_loop
