import 'package:ebook_app/views/home/inner_widget/book_rating.dart';
import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import 'inner_widget/reading_list_card.dart';
import 'inner_widget/tow_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * .1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.displaySmall,
                  children: const [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                      text: "today?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Gary Vanchuk",
                    rating: 4.9,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-2.png",
                    title: "Top Ten Business Hacks",
                    auth: "Herman Joel",
                    rating: 4.8,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-3.png",
                    title: "How to Win Friends",
                    auth: "Gary Vanchuk",
                    rating: 4.9,
                  ),
                  ReadingListCard(
                    image: "assets/images/book-1.png",
                    title: "Crushing & Influence",
                    auth: "Gary Vanchuk",
                    rating: 4.9,
                  ),
                  SizedBox(width: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: Theme.of(context).textTheme.displaySmall,
                          children: const [
                        TextSpan(text: "Best of The "),
                        TextSpan(
                            text: "day",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ])),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    height: 205,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 24, top: 24, right: size.width * .37),
                            height: 185,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffEAEAEA).withOpacity(.45),
                              borderRadius: BorderRadius.circular(29),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "New York Time Best For 11th March 2020",
                                  style: TextStyle(
                                      fontSize: 9,
                                      color: AppColors.kLightBlackColor),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "How To Win \nFriends & Influence",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                const Text(
                                  "Gary Venchuk",
                                  style: TextStyle(
                                      color: AppColors.kLightBlackColor),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Row(
                                  children: [
                                    BookRating(score: 4.9),
                                    SizedBox(width: 5),
                                    Expanded(
                                        child: Text(
                                      "When the earth was flat and wanted to win.",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.kLightBlackColor),
                                    ))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset(
                            "assets/images/book-3.png",
                            width: size.width * .37,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: SizedBox(
                              height: 40,
                              width: size.width * .3,
                              child: const TowSideRoundedButton(
                                text: "Read",
                              ),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
