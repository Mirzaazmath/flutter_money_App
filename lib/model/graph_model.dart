import 'dart:ui';

class GraphModel{
 final  String name;
 final  Color color;

 GraphModel({required this.name,required this.color});

}
List<GraphModel>graphlist=[
  GraphModel(name: "Jan", color:const  Color(0xffdab923)),
  GraphModel(name: "Feb", color:const  Color(0xffdd9fab)),
  GraphModel(name: "Mar", color:const  Color(0xff95ddc2)),
  GraphModel(name: "Apr", color:const  Color(0xfff04e7c)),
  GraphModel(name: "May", color:const  Color(0xffe3cf7f)),
  GraphModel(name: "Jun", color:const  Color(0xff2ab2d3)),
];