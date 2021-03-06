import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color fontColor;
  final Color borderColor;
  final VoidCallback onTap;

  NextButtonWidget(
      {required this.label,
      required this.backgroundColor,
      required this.fontColor,
      required this.borderColor,
      required this.onTap});

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.label = label,
        fontColor = AppColors.white,
        backgroundColor = AppColors.darkGreen,
        borderColor = AppColors.green,
        onTap = onTap;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.label = label,
        fontColor = AppColors.grey,
        backgroundColor = AppColors.white,
        borderColor = AppColors.border,
        onTap = onTap;

  NextButtonWidget.purple({required String label, required VoidCallback onTap})
      : this.label = label,
        fontColor = AppColors.white,
        backgroundColor = AppColors.purple,
        borderColor = AppColors.green,
        onTap = onTap;

  NextButtonWidget.transparent(
      {required String label, required VoidCallback onTap})
      : this.label = label,
        fontColor = AppColors.white,
        backgroundColor = Colors.transparent,
        borderColor = AppColors.green,
        onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(this.backgroundColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            side: MaterialStateProperty.all(BorderSide(color: borderColor))),
        onPressed: onTap,
        child: Text(label,
            style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w600, fontSize: 15, color: fontColor)),
      ),
    );
  }
}
