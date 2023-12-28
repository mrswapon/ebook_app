import 'package:ebook_app/views/home/inner_widget/tow_side_rounded_button.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import 'book_rating.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;

  const ReadingListCard({
    Key? key, // Make sure to mark key as nullable
    required this.image,
    required this.title,
    required this.auth,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, bottom: 40),
      height: 245,
      width: 202,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: AppColors.kShadowColor,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(image, width: 150),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                BookRating(score: rating),
              ],
            ),
          ),
          Positioned(
              top: 160,
              child: Container(
                height: 85,
                width: 202,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: RichText(
                        maxLines: 2,
                        text: TextSpan(
                          style: const TextStyle(color: AppColors.kBlackColor),
                          children: [
                            TextSpan(
                                text: "$title\n",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "$auth",
                                style: const TextStyle(
                                    color: AppColors.kBlackColor))
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            width: 101,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: const Text("Details"),
                          ),
                        ),
                        const Expanded(
                            child: TowSideRoundedButton(
                          text: "Read",
                        ))
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
