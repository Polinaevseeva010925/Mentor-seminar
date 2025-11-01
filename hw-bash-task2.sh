echo "Текущее PATH: $PATH"
if [ -n "$1" ]; then
  export PATH="$PATH:$1"
  echo "Обновлённый PATH: $PATH"
else
  echo "Ошибка: не передана директория для добавления."
fi