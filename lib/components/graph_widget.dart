import 'package:flutter/material.dart';

import '../model/graph_model.dart';
import '../utils/text_utils.dart';
class GraphWidget extends StatelessWidget {
  const GraphWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 170,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for(int i=0;i<graphlist.length;i++)...[

            Column(
              //crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height:240*(0.1*(i+1)),
                  width: 8,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color:  graphlist[i].color,),
                      gradient: LinearGradient(

                          begin: Alignment.topCenter,
                          colors: [
                            graphlist[i].color,



                            Colors.black
                          ]
                      )

                  ),
                ),
                const SizedBox(height: 5,),
                TextUtil(text: graphlist[i].name,size: 12,),
              ],
            )
          ]
        ],
      ),

    );
  }
}
