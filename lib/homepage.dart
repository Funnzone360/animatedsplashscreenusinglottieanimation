import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("SAY HI TO EVERYONE"),
            Icon(Icons.hail, size: 100),
          ],
        ),
      ),
    );
  }
}
