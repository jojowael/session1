import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Color(0x1BFFFFFF),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20),topRight: Radius.circular(20),),
      ),
      child: Padding(
      padding: EdgeInsets.all(13),
        child: Text('This is My Message',
          style: TextStyle(fontSize: 20,color: Colors.white),
        ),
      )
    );


  }

}