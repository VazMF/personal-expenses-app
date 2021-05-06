import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1', 
      title: 'New shoes', 
      amount: 69.90, 
      date: DateTime.now()
    ),
    Transaction(
      id: 't2', 
      title: 'Weekly groceries', 
      amount: 16.50, 
      date: DateTime.now()
    )
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.blue,
            child: Container(
                width: double.infinity,
                child: Text('CHART', style: TextStyle(color: Colors.white))),
            elevation: 4,
          ),
          Column(children: transactions.map((tx) {
            return Card(
              child: Text(tx.title),
            );
          }).toList(),),
        ],
      ),
    );
  }
}
