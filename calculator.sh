init() {
  input=0

  add() {
      echo "Enter a number to add: " 
      read num
      echo "$input + $num = $(($input+$num))"
      return $(($input+$num))
  }

  subtract() {
      echo "Enter a number to subtract: " 
      read num
      echo "$input - $num = $(($input-$num))"
      return $(($input-$num))
      
  }

  multiply() {
      echo "Enter a number to multiply: " 
      read num
      echo "$input * $num = $(($input*$num))"
      return $(($input*$num))
      
  }

  divide() {
      echo "Enter a number to divide: "
      read num
      echo "$input / $num = $(($input/$num))"
      return $(($input/$num))
  }

  power() {
      echo "Enter a number to power: " 
      read num
      echo "$input ** $num = $input"
      return $(($input**$num))
  }

  

  menu() {
      echo "___CALCULATOR___"
      echo "1. Add"
      echo "2. Subtract"
      echo "3. Multiply"
      echo "4. Divide"
      echo "5. Power"
      echo "0. Exit"
      
      echo
      echo "Select an option : "
      read option

      case $option in
      1) add
         input=$?
      ;;
      2) subtract
         input=$?
      ;;
      3) multiply
         input=$?
      ;;
      4) divide
         input=$?
      ;;
      5) power
         input=$?
      ;;
      *) ;;
      esac
    
      checkToContinue
  }

  checkToContinue() {
      echo "Do you want to continue? [y/n]: " 
      read opt
      echo $opt
      if [ $opt != "y" ]
      then
       echo "Program terminated"    
      else 
       menu
      fi 
  }


  echo "Enter a number: "
  read input
  menu
}

init