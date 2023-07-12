import 'package:flutter/material.dart';
class TextUtil extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final bool? isbold;
  const TextUtil({super.key,required this.text,this.color,this.size,this.isbold});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color:color?? Theme.of(context).iconTheme.color,fontSize: size??17,fontWeight:isbold==null? FontWeight.bold:FontWeight.normal),);

  }
}
