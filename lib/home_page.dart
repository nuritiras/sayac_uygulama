import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sayaç Uygulaması')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sayaç Değeri:',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _sayacArttir();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Kaydedildi")));
              });
            },
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _sayacAzalt();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text("Silindi")));
              });
            },
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter = 0;
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Uyarı"),
                      content: Text("Silmek istiyor musunuz?"),
                    );
                  },
                );
              });
            },
            tooltip: 'Reset',
            child: Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }

  void _sayacArttir() {
    _counter++;
  }

  void _sayacAzalt() {
    _counter--;
  }
}
