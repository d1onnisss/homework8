import 'dart:io';
import 'dart:math';

void main() {
  String choice = "да";
  List<String> password = [];
  List<String> chars = ["a", "b", "c", "d", "e", "f", "g", "h", "i", 
                        "k", "l", "m", "n", "o", "p", "r", "s", "t",
                        "u", "v", "w", "x", "y", "z", "0", "1", "2",
                        "3", "4", "5", "6", "7", "8", "9"];

  do {
    stdout.write("Введите длину Вашего пароля: ");
    int passwordLength = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

    if (passwordLength <= 0) {
      print("Длина не может быть отрицательной или нулевой. Попробуйте заново.");
      continue;
    }

    password.clear();

    for (int i = 0; i < passwordLength; i++) {
      password.add(chars[Random().nextInt(chars.length)]);
    }

    print(password.join()); 
    print("Хотите сгенерировать новый пароль ? (да/нет)");
    choice = stdin.readLineSync() ?? "";
  } while (choice == "да");
}
