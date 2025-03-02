import 'dart:io';

void main() {
  print("🌍 اختر اللغة / Choose language:");
  print("1️⃣ العربية");
  print("2️⃣ English");
  stdout.write("👉 أدخل رقم اللغة / Enter language number: ");
  String choice = stdin.readLineSync()!;
  String language = (choice == "1") ? "ar" : "en";
  

}
