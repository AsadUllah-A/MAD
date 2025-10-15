import 'dart:io';

void main() {
  // Ask user for input
  stdout.write("Enter a number (n): ");
  String? input = stdin.readLineSync();
  int n = int.tryParse(input ?? '') ?? 0;

  // Outer loop -> rows
  for (int i = 1; i <= n; i++) {
    // Inner loop -> numbers in each row
    for (int j = 1; j <= i; j++) {
      stdout.write("$j "); // print number with space, stay in same line
    }
    print(""); // move to next line after row finishes
  }
}
