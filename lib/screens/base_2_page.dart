import 'dart:math';

import 'package:flutter/material.dart';

import '../extensions/math_extension.dart';
import '../misc/diamond_border.dart';

class Base2Page extends StatefulWidget {
  const Base2Page({super.key});

  @override
  State<Base2Page> createState() => _Base2PageState();
}

class _Base2PageState extends State<Base2Page> {
  int _prevValue = 1;
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter += _prevValue;
      _prevValue = _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '2^${log2(_counter).toInt()} =',
            ),
            Text(
              '$_counter',
              key: const Key('counter-key'),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_counter == pow(2, 62)) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text(
                  'Cannot raise power without overflowing :(',
                ),
              ),
            );
          } else {
            _incrementCounter();
          }
        },
        tooltip: 'Base 2',
        shape: const DiamondBorder(),
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
