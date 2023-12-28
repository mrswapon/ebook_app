import 'package:ebook_app/views/screen/home/inner_widget/book_rating.dart';
import 'package:ebook_app/views/screen/welcome/inner_widget/rounded_button.dart';
import 'package:flutter/material.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';
import 'ineer_widget/chapter_card.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppImages.bg),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * .1),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChapterCard(
                        name: "Money",
                        chapterNumber: 1,
                        tag: "Life is about change",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Power",
                        chapterNumber: 2,
                        tag: "Everything loves power",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Influence",
                        chapterNumber: 3,
                        tag: "Influence easily like never before",
                        press: () {},
                      ),
                      ChapterCard(
                        name: "Win",
                        chapterNumber: 4,
                        tag: "Winning is what matters",
                        press: () {},
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
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
                        TextSpan(
                            text: "You might also ",
                            style: TextStyle(
                              fontSize: 28,
                            )),
                        TextSpan(
                          text: "like....",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      const SizedBox(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 24, top: 24, right: 150),
                          height: 160,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(29),
                            color: const Color(0xFFFFF8F6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style:
                                      TextStyle(color: AppColors.kBlackColor),
                                  children: [
                                    TextSpan(
                                      text:
                                          "How To Win \nFriends & Influence \n",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    TextSpan(
                                        text: "Gray Venchuk",
                                        style: TextStyle(
                                            color: AppColors.kLightBlackColor)),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  const BookRating(score: 4.9),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: RoundedButton(
                                      text: "Read",
                                      verticalPadding: 10,
                                      press: () {},
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(
                          AppImages.book3,
                          width: 150,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crushing &",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontSize: 27),
              ),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "When the earth was flat and everyone wanted to win the game of best.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: AppColors.kLightBlackColor,
                          ),
                        ),
                        const SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          press: () {},
                          verticalPadding: 10,
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const BookRating(score: 4.9),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          AppImages.book1,
          height: 170,
        ),
      ],
    );
  }
}
