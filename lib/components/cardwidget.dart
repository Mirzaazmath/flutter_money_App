import 'package:flutter/material.dart';
import 'package:flutter_money_app/utils/text_utils.dart';
import '../screens/totalbalance_screen.dart';
import '../utils/custom_route.dart';
import '../utils/gradient_util.dart';
import 'cardclipper.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(MyCustomAnimatedRoute( enterWidget: TotalBalanceScreen(),));
       // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TotalBalanceScreen()));
      },
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 30,),
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  padding:const  EdgeInsets.all(25),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: ColourClass().greygradient
                  ),
                  // color: const Color(0xff373f4a),
                  child:const  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.developer_board,size: 40,),
                          TextUtil(text: "08/26",)
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Total balance",),
                              SizedBox(height: 5,),
                              TextUtil(text: "\$20,000.50",color: Colors.white,size: 19,),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextUtil(text: "Name",),
                              SizedBox(height: 5,),
                              TextUtil(text: "Dev_73arner",color: Colors.white,size: 19,),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height:15,),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
              child:Container(
                  margin:const  EdgeInsets.all(10),
                  height: 110,
                  width: 110,
                  decoration:const  BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors:  [
                            Color(0xff1a2129),
                            Color(0xff0d1218)
                          ]
                      ),

                  ),
                  alignment: Alignment.center,
                  child:  CircleAvatar(
                      radius: 48,
                      backgroundImage: const AssetImage("assets/bg2.webp"),
                      child: Padding(
                        padding:const  EdgeInsets.all(10),
                        child: Image.asset("assets/visa.png"),
                      )
                  ))
          ),
          //
        ],
      ),
    );
  }
}
