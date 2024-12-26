import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text ConCatination'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<Provider1>(builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: Card(
                  color: Colors.cyanAccent,
                  child: Center(
                      child: Text(
                    value.resultText ?? 'the result will be shown here',
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: value.firsttextcontroleler,
                decoration: InputDecoration(
                    label: Text('Enter yor first name'),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: value.secondttextcontroleler,
                decoration: InputDecoration(
                    label: Text('Enter yor last name'),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    value.stringConcatFunction();
                  },
                  child: Text('Submit'))
            ],
          );
        }),
      ),
    );
  }
}
