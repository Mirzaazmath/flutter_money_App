import 'package:flutter/material.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart'as neo;

import '../utils/text_utils.dart';
class RadialWidget extends StatelessWidget {
  const RadialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Center(
      child: Container(
        height: 300,
        width: 300,
        decoration:const neo. BoxDecoration(
            shape: BoxShape.circle,
            color:  Color(0xff050e15),
            boxShadow: [
              neo. BoxShadow(
                  color: Colors.black,
                  offset:  Offset(-10,-10),
                  blurRadius: 25,
                  inset: true

              ),
              neo.BoxShadow(
                  color: Colors.black,
                  offset: Offset(10,10),
                  blurRadius: 25,
                  inset: true
              ),

            ]
        ),
        alignment: Alignment.center,


        child:
        Container(
            margin:const  EdgeInsets.all(15),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff39414c),
                    Color(0xff171e28)
                  ]
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              margin:const  EdgeInsets.all(30),
              decoration:const neo. BoxDecoration(
                  shape: BoxShape.circle,
                  color:     Color(0xff182128),
                  boxShadow: [
                    neo. BoxShadow(
                        color: Colors.black,
                        offset:  Offset(-10,-10),
                        blurRadius: 25,
                        inset: true

                    ),
                    neo.BoxShadow(
                        color: Colors.black,
                        offset: Offset(10,10),
                        blurRadius: 25,
                        inset: true
                    ),

                  ]
              ),
              alignment: Alignment.center,
              child:const   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtil(text: "Total Balance",color: Colors.white,size: 19,),
                  SizedBox(height: 10,),
                  TextUtil(text: "\$20,000.50",color: Colors.white,size: 25,),
                ],

              ),
            )

        ),
      ),

    );
  }
}
