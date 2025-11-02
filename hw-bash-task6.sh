# 1) Читаем данные из файла
cat input.txt
# 2) Перенаправляем вывод команды wc -l (подсчет строк) в файл output.txt.
wc -l < input.txt > output.txt
# 3) Перенаправляем ошибки
ls /input1.txt 2> error.log
