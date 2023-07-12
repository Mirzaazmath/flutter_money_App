import 'package:flutter/material.dart';
class BackgroundContainer extends StatelessWidget {
 final  Widget child;
  const BackgroundContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          // begin: Alignment.centerLeft,
          // end: Alignment.centerRight,
          colors:  [
            Color(0xff1a2129),
            Color(0xff0d1218)
          ]
        )

      ),
      child: child,
    );
  }
}
