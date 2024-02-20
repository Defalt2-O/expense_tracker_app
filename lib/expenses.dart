import 'package:expense_tracker_app/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
      title: 'Flutter Course',
      amount: 389.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 249.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Charts'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpense),
        ),
      ],
    );
  }
}
