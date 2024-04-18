import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MessageBox.dart';

class WhatsappScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Container(
         child: Row(
           children: [
             CircleAvatar(
               backgroundImage: AssetImage('assets/images/person.jpg'),
             ),
             SizedBox(width: 10,),
             Text('person'),

           ],
         ),
       ),
       backgroundColor: Colors.black,
       leading: IconButton( icon: Icon(Icons.arrow_back),color: Colors.white,
         onPressed: () {
         Navigator.pop(context);
         },),
       actions: [
         Icon(Icons.videocam),
         SizedBox(width: 10,),
         Icon(Icons.phone),
         SizedBox(width: 10,),
         Icon(Icons.more_vert),
       ],
     ),
     body:
     Container(
       decoration: BoxDecoration(
         image: DecorationImage(
             image:AssetImage('assets/images/background.png'),
           fit: BoxFit.cover

         )
       ),
       child:
       Column(
         children: [
           SizedBox(height: 50),
           Row(
             children: [
               CircleAvatar(backgroundImage: AssetImage('assets/images/person1.jpg'),)
               , SizedBox(width: 10),
               MessageBox()
             ],
           ),
           SizedBox(height: 50),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               MessageBox(),
               CircleAvatar(backgroundImage: AssetImage('assets/images/person2.jpg'),)
             ],
           ),
          Expanded(child: Container()),
          Row(
            children: [
              Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Color(0x1BFFFFFF),
                    child: Row(
                      children: [
                        Ink(
                          width: 40,
                            height: 40,
                            child: Icon(Icons.emoji_emotions_outlined,color: Colors.white,)),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Type a Message',
                              hintStyle: TextStyle(color: Colors.white,fontSize: 15),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Ink(
                            width: 40,
                            height: 40,
                            child: Icon(Icons.link,color: Colors.white,)),

                      ],

                    ),

                  ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: Color(0x1BFFFFFF),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.mic,color: Colors.white),
                  )),
            ],
          )

         ],
       )
     )

   );
  }

}