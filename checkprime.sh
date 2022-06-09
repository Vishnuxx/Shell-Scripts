init() {
  
   checkPrime() {
       isNotPrime=0
       echo "Enter a number: "
       read num
       if ((num>1))
       then 
       for ((i=2; i<num/2; i++))
       do 
        ans=$(( num%i ))
        if ((ans==0))
        then
         isNotPrime=1
         echo "$num is not a prime number"
         exit 0
        fi
       done
       fi
       
    echo "$num is a prime number"
   }

    menu() {
       echo " ___MENU___"
       echo "1.Check prime"
       echo "2.Factorial"
       echo "Select an option : " 
       read option

       case $option in
       1) checkPrime ;;
       *) echo "program terminated";;
       esac

   }

   menu
}

init