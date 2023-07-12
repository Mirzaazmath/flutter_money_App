import 'package:flutter/material.dart';
import 'package:flutter_money_app/components/background_component.dart';
import 'package:flutter_money_app/utils/text_utils.dart';
import '../components/cardwidget.dart';
import '../model/transaction_model.dart';
import '../utils/gradient_util.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
 final  List<String>emojilist=["assets/emoji1.png","assets/emoji2.png","assets/emoji3.png",""];
   final List<Transation>transactionlist=[
     Transation(name: "UI/UX Course", image: "assets/photo1.png", amount: "\$50.00"),
     Transation(name: "Dribble Pro", image: "assets/photo2.webp", amount: "\$67.00"),
     Transation(name: "Netflex Pack", image: "assets/photo3.png", amount: "\$59.00")
   ];

  @override
  Widget build(BuildContext context) {
    return   BackgroundContainer(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: const Icon(Icons.drag_indicator),
            // actions: [
            //   Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Switch.adaptive(
            //
            //         value: false, onChanged: (vale){
            //
            //     }),
            //   )
            // ],
          ),
         
          backgroundColor: Colors.transparent,
          body:  SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const  TextUtil(text: "Welcome back!",size: 20,),
                    const   SizedBox(height: 5,),
                    const  TextUtil(text: "Dev_73arner",size: 26,color: Colors.white,),
                    const  SizedBox(height: 10,),
                    const CardWidget(),
                    const SizedBox(height: 50,),
                    const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtil(text: "Send money",size: 25,color: Colors.white,isbold: false,),
                        TextUtil(text: "See all",size: 15,),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<emojilist.length;i++)...[
                          Container(
                            height: 65,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: ColourClass().greygradient
                            ),
                            alignment: Alignment.center,
                            child:emojilist[i]==""?const Icon(Icons.add,size: 40,): AspectRatio(
                              aspectRatio:i==2?0.5: 0.6,
                                child: Image.asset(emojilist[i])),
                          )
                        ]
                      ],
                    ),
                    const SizedBox(height: 30,),
                    const  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtil(text: "Transactions",size: 25,color: Colors.white,isbold: false,),
                        TextUtil(text: "...",size: 15,),
                      ],
                    ),
                    const SizedBox(height: 20,),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=0;i<transactionlist.length;i++)...[
                          Container(
                            height: 110,
                            width:100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: ColourClass().greygradient
                            ),
                           padding:const  EdgeInsets.all(10),
                           child:  Column(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               CircleAvatar(
                                 backgroundColor: const Color(0xff1f2b33),
                                 child: AspectRatio(
                                   aspectRatio:i==1?1: 0.5,
                                     child: Image.asset(transactionlist[i].image)),
                               ),
                               TextUtil(text: transactionlist[i].name,size: 12,),
                               TextUtil(text: transactionlist[i].amount,size: 16,color: Colors.white,),
                             ],
                           )
                          )
                        ]
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
