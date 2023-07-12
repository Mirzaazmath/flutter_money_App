import 'package:flutter/material.dart';

import '../components/background_component.dart';
import '../components/graph_widget.dart';
import '../components/radial_container.dart';
import '../model/graph_model.dart';
import '../utils/text_utils.dart';

class TotalBalanceScreen extends StatelessWidget {
  const TotalBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body:Padding(
            padding:const  EdgeInsets.symmetric(horizontal: 20),
            child:  Column(
              children: [
             const   RadialWidget(),
                const  SizedBox(height: 25,),
                Row(
                  children: [
                    Container(
                      padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color:const  Color(0xff232935),
                      ),
                      child:const  Row(
                        children: [
                          TextUtil(text: "Income",color: Colors.white,isbold: false,),
                          SizedBox(width: 5,),
                          Icon(Icons.expand_more_rounded,color: Color(0xffb5e2d8),)
                        ],
                      ),
                    ),
                  const   Spacer(),
                    const  TextUtil(text: "Month",color: Colors.white,size: 14,),
                    const  Spacer(),
                    const  TextUtil(text: "Week",size: 12,),
                    const  Spacer(),
                    const  TextUtil(text: "Day",size: 12,),
                  ],
                ),
                const   Spacer(),
                const  GraphWidget(),
                const   Spacer(),
              ],


            ),
          )


        ));
  }
}
