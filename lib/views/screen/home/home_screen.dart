import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import '../details/details_screen.dart';
import 'inner_widget/book_rating.dart';
import 'inner_widget/reading_list_card.dart';
import 'inner_widget/tow_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.mainPage),
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          image: AppImages.book1,
                          title: "Crushing & Influence",
                          auth: "Gary Vanchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: AppImages.book2,
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                          pressDetails: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: AppImages.book3,
                          title: "How to Win Friends",
                          auth: "Gary Vanchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                        ),
                        ReadingListCard(
                          image: AppImages.book1,
                          title: "Crushing & Influence",
                          auth: "Gary Vanchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
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
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                              style: Theme.of(context).textTheme.displaySmall,
                              children: const [
                                TextSpan(text: "Continue "),
                                TextSpan(
                                    text: "reading...",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ]),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 10),
                                  blurRadius: 33,
                                  color:
                                      const Color(0xFFD3D3D3).withOpacity(.84)),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, right: 20),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Gary Venchuk",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .kLightBlackColor),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: AppColors
                                                        .kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          AppImages.book1,
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .65,
                                  decoration: BoxDecoration(
                                    color: AppColors.kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * .35),
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
                        fontSize: 9, color: AppColors.kLightBlackColor),
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
                    style: TextStyle(color: AppColors.kLightBlackColor),
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
                            fontSize: 10, color: AppColors.kLightBlackColor),
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
              AppImages.book3,
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
    );
  }
}
