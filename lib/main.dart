import 'package:flutter/material.dart';
import 'package:expense_tracker_app/widgets/expenses.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 222, 46, 11),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kcolorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          foregroundColor: kcolorScheme.primaryContainer,
          backgroundColor: kcolorScheme.onPrimaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kcolorScheme.primaryContainer,
          elevation: 5,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kcolorScheme.onSecondaryContainer,
            foregroundColor: kcolorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(fontWeight: FontWeight.normal),
              bodyMedium: TextStyle(
                  fontSize: 16, color: kcolorScheme.onPrimaryContainer),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
