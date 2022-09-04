## Lesson 6

### Задание 1. Написать скрипт, который удаляет из текстового файла пустые строки и заменяет маленькие символы на большие. Воспользуйтесь tr или SED.

```bash
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ sed '/^$/d' lesson6_examples.txt
ing@shikin:/media/data/devel/GeekBrains/basic_linux$ tr -s '\n' < lesson6_examples.txt
```
s/.*/\U&/ #вот эта конструкция переводит все символы в верхний регистр