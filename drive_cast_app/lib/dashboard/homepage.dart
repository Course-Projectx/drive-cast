import 'package:flutter/material.dart';
import '../main.dart';

void main() => runApp(const MyApp());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Drive Cast'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Implement your settings functionality here
              },
            ),
          ],
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Cast Screen'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
