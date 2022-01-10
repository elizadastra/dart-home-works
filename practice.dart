// import 'dart:io';
// import 'dart:math';

// Random random = new Random();

// void main() {
//   print("Введите загаданное вами число в диапазоне от 1 до 100: ");
//   int number = int.parse((stdin.readLineSync()!));
//   int left = 1;
//   int right = 100;
//   int tries = 1;

//   while (left < right) {
//     int current = (left + right) ~/ 2;

//     print('Ваше число($number) да, больше или меньше $current');
//     String z = stdin.readLineSync()!;

//     if (z == 'greater') {
//       left = current + 1;
//       tries += 1;
//     } else if (z == 'less') {
//       right = current - 1;
//       tries += 1;
//     } else if (z == 'yes') {
//       print('Я его угадал!');
//       break;
//     }
//   }

//   print('Ваше число: $number, кол-во попыток: $tries');
// }

import 'dart:io';
import 'dart:math';

Random random = new Random();

void main() {
  print("Отгадайте число в диапазоне от 1 до 100: ");
  int number = 0;
  int x = 1;
  int y = 100;
  int tries = 1;
  int computer_number = nextInt(x, y);

  while (number != computer_number) {
    int number = int.parse((stdin.readLineSync()!));

    if (number == computer_number) {
      print('Вы угадали');
      break;
    } else if (number > computer_number) {
      print("greater");
      tries++;
    } else if (number < computer_number) {
      print("less");
      tries++;
    }
  }

  print(
      'Число загаданное компьютером: $computer_number, кол-во попыток: $tries');
}

int nextInt(int min, int max) => min + random.nextInt((max + 1) - min);
