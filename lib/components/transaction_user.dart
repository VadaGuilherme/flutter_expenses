import 'dart:math';

import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/cupertino.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: '1',
      title: 'Conta #01',
      value: 310.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #02',
      value: 85.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #03',
      value: 85.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #04',
      value: 85.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #05',
      value: 85.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #06',
      value: 85.75,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Conta #07',
      value: 85.75,
      date: DateTime.now(),
    )
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
