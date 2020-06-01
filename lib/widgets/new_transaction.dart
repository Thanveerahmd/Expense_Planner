import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function newtran;


  NewTransaction(this.newtran);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enterdTitle = titleController.text;

    if (enterdTitle.isEmpty || amountController.text.isEmpty) {
      return;
    }
    
    final enteredAmount = double.parse(amountController.text);
    widget.newtran(enterdTitle, enteredAmount);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Title"),
              controller: titleController,
              keyboardType: TextInputType.text,
              onSubmitted: (_) => submitData,
              // onChanged: (val) {},
            ),
            TextField(
                decoration: InputDecoration(labelText: "Amount"),
                controller: amountController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => submitData
                //onChanged: (val) {},
                ),
            FlatButton(
              onPressed: submitData,
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
