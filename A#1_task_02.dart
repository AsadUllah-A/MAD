import 'dart:io';

void main() {
  // Step 1: Take name and age
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your age: ");
  String? ageInput = stdin.readLineSync();
  int age = int.tryParse(ageInput ?? '') ?? 0;

  if (age < 18) {
    print("Sorry $name, you are not eligible to register.");
    return; // Stop execution
  }

  // Step 2: Ask how many numbers the user wants to enter
  stdout.write("How many numbers do you want to enter? ");
  String? nInput = stdin.readLineSync();
  int n = int.tryParse(nInput ?? '') ?? 0;

  List<int> numbers = [];

  for (int i = 0; i < n; i++) {
    stdout.write("Enter number ${i + 1}: ");
    String? numInput = stdin.readLineSync();
    int num = int.tryParse(numInput ?? '') ?? 0;
    numbers.add(num);
  }

  // Step 3: Calculate sums, largest, smallest
  int sumEven = 0;
  int sumOdd = 0;
  int largest = numbers[0];
  int smallest = numbers[0];

  for (int num in numbers) {
    if (num % 2 == 0) {
      sumEven += num;
    } else {
      sumOdd += num;
    }

    if (num > largest) largest = num;
    if (num < smallest) smallest = num;
  }

  // Step 4: Print results
  print("\nNumbers entered: $numbers");
  print("Sum of even numbers: $sumEven");
  print("Sum of odd numbers: $sumOdd");
  print("Largest number: $largest");
  print("Smallest number: $smallest");
}
