import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class ContainerAllahName extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  ContainerAllahName({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColors.primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(text1,),
            SizedBox(height: 55,),
            Text(text2,
            style: TextStyle(fontSize: 50),),
            SizedBox(height: 30,),
            Text(text3,
                style: TextStyle(fontSize: 25),),
            SizedBox(height: 30,),
            Text(text4,
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
