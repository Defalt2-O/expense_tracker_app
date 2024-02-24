import 'package:expense_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/new_expense.dart';

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

  void addExpense(Expense newExpense) {
    setState(() {
      _registeredExpense.add(newExpense);
    });
  }

  void removeExpense(Expense newExpense) {
    setState(() {
      _registeredExpense.remove(newExpense);
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled:
          true, //This allows the overlay to take the full width of the screen. Therefore keyboard won't cover available widgets.
      context:
          context, //context tells Flutter where the content should be displayed in the app.
      builder: (ctx) => NewExpense(
        onAddExpense: addExpense,
      ), //similarly ctx is the context for the Modal Overlay.
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense App'),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          const Text('Charts'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpense,
              onAddExpense: removeExpense,
            ),
          ),
        ],
      ),
    );
  }
}
