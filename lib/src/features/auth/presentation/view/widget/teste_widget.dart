import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMaterial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyMaterialState();
  }
}

class MyMaterialState extends State<MyMaterial> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Contador $counter'),
          onTap: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
        )
      ),
    );
  }
}