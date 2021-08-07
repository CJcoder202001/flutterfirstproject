import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String my = "first";
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to my $my app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
