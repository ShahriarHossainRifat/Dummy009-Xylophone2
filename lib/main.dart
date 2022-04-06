import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        centerTitle: true,
        title: Text(
          'Random Birds Chirping',
          style: TextStyle(),
        ),
      ),
      body: Xylophone2(),
    ),
  ));
}

class Xylophone2 extends StatelessWidget {
  const Xylophone2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column();
  }
}
