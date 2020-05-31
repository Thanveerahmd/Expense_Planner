import 'package:Expense_Planner/DataModel/transaction.dart';
import 'package:flutter/material.dart';
import 'Transaction_list.dart';
import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

  final List<Transaction> _userTransaction = [
    Transaction(id: '1', title: 'Laptop', amount: 330000, date: DateTime.now()),
    Transaction(id: '2', title: 'Shoes', amount: 3300, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(), TransactionList(_userTransaction)],
    );
  }
}
