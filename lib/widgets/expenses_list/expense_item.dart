import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      //Outputs a card like structure, where a border and elevation surround the content
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  '₹${expense.amount.toStringAsFixed(2)}',
                ),
                const Spacer(), //When placed in between 2 elements that are in a row/column,
                //spacer takes all the available remaining space in between those elements.
                Icon(categoryIcons[expense.category]),
                const SizedBox(
                  width: 8,
                ),
                Text(expense.formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
