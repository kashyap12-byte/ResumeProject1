import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: ima(),
));


class ima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Image(
          image: AssetImage('assets/Kash.jpg'),
        ),
      ),
    );
  }
}
