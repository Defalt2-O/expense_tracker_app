import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredValue = '';

  void _saveTitleInput(String inputValue) {
    _enteredValue = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged:
                _saveTitleInput, //onChanged is executed each time the TextField widget value changes.
            //Used to accept inputs from the user
            maxLength: 50,
            decoration: const InputDecoration(
              //In order for a label to be provided, we must access the decoration argument first
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_enteredValue);
                  },
                  child: const Text('Save Expense'))
            ],
          ),
        ],
      ),
    );
  }
}
