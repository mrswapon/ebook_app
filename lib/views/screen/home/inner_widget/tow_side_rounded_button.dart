import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';

class TowSideRoundedButton extends StatelessWidget {
  final String text;
  final double radius;

  const TowSideRoundedButton({
    Key? key,
    required this.text,
    this.radius = 29,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.kBlackColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(radius),
            topLeft: Radius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
