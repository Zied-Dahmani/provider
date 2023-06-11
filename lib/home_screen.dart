import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_notifier.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final count = context.select((CounterNotifier counterNotifier) => counterNotifier.count);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Consumer<CounterNotifier>(
            builder: (context, value, child) {
              return Text(value.count.toString());
            },
          ),
          Selector<CounterNotifier, int>(
            selector: (_, counterNotifier) => counterNotifier.count,
            builder: (context, value, child) {
              return Text(value.toString());
            },
          ),
          IconButton(
            onPressed: () {
              Provider.of<CounterNotifier>(context, listen: false).increment();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
