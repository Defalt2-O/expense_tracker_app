import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      // ignore: deprecated_member_use
      theme: ThemeData().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 93, 194, 245)),
      home: const Expenses(),
    ),
  );
}
