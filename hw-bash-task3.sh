echo "Введите число"
read num
if [ "$num" -gt 0 ]; then
   echo "Число положительное"
elif [ "$num" -lt 0 ]; then
   echo "Число отрицательное"
else echo "Число равно 0"
fi
echo "Подсчет от 1 до введенного числа:"
count=0
if [ "$num" -gt 0 ]; then
   while [ "$count" -lt "$num" ]; do
     ((count++))
     echo $count
   done
else echo "Число отрицательное или равно 0"
fi