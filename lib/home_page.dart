import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final days = 30;
  final name = "Codepur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scalfold is like material but with lots of widgets and more
      appBar: AppBar(
        title: Text("Catalog Application"),
      ),
      body: Center(
        //To bring container to the center we are wrapping the container with center widget.
        child: Container(
          child: Text('Welcome to $days days of flutter with $name'),
          //We can manipulate the string with some data. i.e string interpolation
          //With the help of ($var_name) in the string.
        ),
      ),
      drawer: Drawer(),
    );
  }
}
