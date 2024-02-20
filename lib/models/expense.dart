import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work } //enum creates pre-defined list of
//values with names as the values

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4(); // Used to generate a random string  for each expense

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
