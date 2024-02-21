import 'package:expense_tracker_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses
          .length, //Item count runs the function below, as many times as its value.
      //index starts from 0 and runs the function until it is equal to itemCount
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
    //ListView returns a widget that displays a scrolling list of child widgets in the form of a column.
    //Howeever, we also use builder with it as ListView, without builder, creates all scrollable items when it is called.
    //Whereas builder allows for creation of those items, only when they are present on the screen.
  }
}
