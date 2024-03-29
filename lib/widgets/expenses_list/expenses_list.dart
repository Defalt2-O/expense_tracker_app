import 'package:expense_tracker_app/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onAddExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onAddExpense;

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: expenses
          .length, //Item count runs the function below, as many times as its value.
      //index starts from 0 and runs the function until it is equal to itemCount
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error,
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal - 14,
          ),
        ), //When we set Themes in the MaterialApp widget, we can
        //use those themes by using the above syntax.
        key: ValueKey(expenses[index]),
        onDismissed: (direction) => onAddExpense(
          expenses[index],
        ),
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
    //ListView returns a widget that displays a scrolling list of child widgets in the form of a column.
    //Howeever, we also use builder with it as ListView, without builder, creates all scrollable items when it is called.
    //Whereas builder allows for creation of those items, only when they are present on the screen.
    //Builder allows us to create itemBuilder, which satisfies the above scrolling only when visible property.
  }
}
