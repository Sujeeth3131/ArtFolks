import 'package:art_folks/module/aunthetication/login/login_screen.dart';
import 'package:art_folks/res/text_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(494),
            Text(
              "Join students who've already succeeded with our app's",
              maxLines: 1,
              style: AppTextStyles.heading10.copyWith(color: Color(0xFF2E2E2E)),
            ),
            Text(
              "tools and support. Let's get you started!",
              style: AppTextStyles.heading10.copyWith(color: Color(0xFF2E2E2E)),
            ),
            const Gap(24),
            SizedBox(
                height: 53,
                width: 388,
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: AppTextStyles.heading11
                            .copyWith(color: Color(0xFF4E4E4E)),
                        filled: true,
                        fillColor: Color(0xFFEFF7FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)))),
            const Gap(12),
            SizedBox(
                height: 53,
                width: 388,
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Mobile Number",
                        hintStyle: AppTextStyles.heading11
                            .copyWith(color: Color(0xFF4E4E4E)),
                        filled: true,
                        fillColor: Color(0xFFEFF7FF),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none)))),
            const Gap(40),
            Center(
              child: SizedBox(
                  height: 50,
                  width: 328,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login_screen()),
                      );
                    },
                    child: Text(
                      "Confirm",
                      style: AppTextStyles.heading6,
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1A60E2)),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
