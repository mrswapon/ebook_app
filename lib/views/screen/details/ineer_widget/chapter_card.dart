import 'package:flutter/material.dart';
import '../../../../utils/app_colors.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;

  const ChapterCard(
      {super.key,
      required this.name,
      required this.tag,
      required this.chapterNumber,
      required this.press});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38.5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 33,
              color: const Color(0xffD3D3D3).withOpacity(.84)),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber : $name \n",
                  style: const TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(
                    color: AppColors.kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: press,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
