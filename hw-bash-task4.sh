greet() {
    echo "Hello,$1"
}

count() {
    read -p "Введите первое число " a
    read -p "Введите второе число " b
    let "c=$a+$b"
    echo "Сумма чисел равна $c"                           
}

greet "Pauline"
count