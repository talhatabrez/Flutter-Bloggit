// cat_autombiles.dart
import 'package:flutter/material.dart';
import 'map.dart';

final automap autoblogs = automap();

class CatAutombiles extends StatelessWidget{
  const CatAutombiles({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome to Automobile blogs, you can find all your favorite blogs below'),),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3),
          shrinkWrap: false,
          //itemCount: ,
          itemBuilder: (context, index) {
            //final blogEntries = autoblogs.entries.toList()[index];
            final blogEntries = autoblogs.entries.toList()[index];
            return Card(
              color: Colors.lightGreen,
              child: Center(
                child: Text(
                  blogEntries.key,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            );
          },
      ),
    );
  }
}