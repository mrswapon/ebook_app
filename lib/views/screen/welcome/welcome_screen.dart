import 'package:flutter/material.dart';
import '../../../utils/app_images.dart';
import '../home/home_screen.dart';
import 'inner_widget/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.bitmap),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(text: "flamin"),
                  TextSpan(
                      text: "go", style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                text: "Start Reading",
                fontSize: 20,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return  const HomeScreen();
                  }));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
