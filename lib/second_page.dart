import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class SecondPage extends StatelessWidget {
  var titleController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Container(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 200,
            child: TextField(
              controller: titleController,
              keyboardType: TextInputType.number,
            ),
          ),
          SizedBox(
            width: 200,
            child: TextField(
              controller: descController,
              keyboardType: TextInputType.number,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              // Provider.of<CounterProvider>(context, listen: false).incrementCounter();
              /*context.read<CounterProvider>().countValue = int.parse(valueController.text.toString());*/

              if (titleController.text.toString().isNotEmpty &&
                  descController.text.toString().isNotEmpty) {
                context.read<CounterProvider>().addTodo({
                  'title' : titleController.text.toString(),
                  'desc' : descController.text.toString()
                });
              }
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          /*FloatingActionButton(
            onPressed: (){
              // Provider.of<CounterProvider>(context, listen: false).incrementCounter();
              context.read<CounterProvider>().decrementCounter();
            },
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),*/
        ],
      ),
    );
  }
}
