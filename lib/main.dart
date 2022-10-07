import 'package:flutter/material.dart';
import 'package:laerning_flutter/Counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    final count = counter.counter;
    return Scaffold(
      appBar: AppBar(title: Text("Provider App")),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increase,
        child: Icon(Icons.plus_one_outlined),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("$count", style: Theme.of(context).textTheme.headline2),
          ),
          ElevatedButton(
            onPressed: counter.decrement,
            child: Text("-1"),
          ),
          ElevatedButton(
            onPressed: counter.resetCounter,
            child: Text("Reset Counter"),
          ),
        ],
      ),
    );
  }
}
