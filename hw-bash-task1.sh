echo "Список файлов и их типов в текущей директории:"
for files in * .*; do
  [ -e "$files" ] || continue
  if [ -f "$files" ]; then
    type="файл"
  elif [ -d "$files" ]; then
    type="каталог"
  elif [ -L "$files" ]; then
    type="символическая ссылка"
  else
    type="другое"
  fi
  echo "$files — $type"
done

filename=$1
if [ -z "$filename" ]; then
  echo "Нет аргументов"
else
  if [ -e "$filename" ]; then
    echo "Файл найден"
  else
    echo "Файл не найден"
  fi
fi

for files in * .*; do
  [ -e "$files" ] || continue
  perm=$(ls -ld "$files" | awk '{print $1}')
  echo "$files - права доступа: $perm"
done
