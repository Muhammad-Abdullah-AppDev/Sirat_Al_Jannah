import 'package:flutter/material.dart';
import 'package:sirat_al_jannah/constants/app_colors.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text,
  required this. onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.green
        ),
        child: Center(
          child: Text(
            text, style: TextStyle(
            fontSize: 24,
            color: AppColors.primaryColor
          ),
          ),
        ),
      ),
    );
  }
}
