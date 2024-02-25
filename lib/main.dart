import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 93, 194, 245),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kcolorScheme.secondaryContainer,
          backgroundColor: kcolorScheme.onSecondaryContainer,
        ),
      ),
      home: const Expenses(),
    ),
  );
}
