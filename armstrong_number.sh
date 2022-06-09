read -p "Enter a number: " num

#check order of digits
n=$num
order=0

while ((n>0))
do
((order++))
((n=n/10))
done

echo $order

#armstrong
n=$num
output=0
s=$num


while ((s>0))
do 
n=$((s % 10))
output=$(( output + (n ** order) ))
s=$((s / 10))
echo $n $s
done

if((num==output))
then
echo $output is armstrong
else
echo $output is not armstrong
fi