import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sms_autofill/sms_autofill.dart';

import '../../../res/text_style.dart';

class Login_screen extends StatefulWidget {

  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 50.0,right: 50),
        child: Column(
          children: [
            Spacer(),
            Text(
              "Verify Phone Number",
              style: AppTextStyles.heading,
            ),
            const Gap(12),
            Text(
              "Please enter the 4 digit code sent to",
              style: AppTextStyles.heading1,
            ),
            RichText(text: TextSpan(children: [
              TextSpan(text: "+971501234567",style: AppTextStyles.heading8),
              TextSpan(text: " through SMS",style: AppTextStyles.heading9),
            ])),
            const Gap(87),
            SizedBox(width: 257,
              child: PinInputTextField(
                controller: _pinController,
                pinLength: 4, // Adjust for the required PIN length
                decoration: UnderlineDecoration(gapSpace: 44,
                  textStyle: TextStyle(fontSize: 12, color: Color(0xFF353535)),
                  colorBuilder: FixedColorBuilder(Color(0xFF353535)),
                ),
                autoFocus: true,
                onSubmit: (pin) {
                  print("Submitted PIN: $pin");
                  // Handle PIN submission
                },
              ),
            ),
            const Gap(34),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "Didn't receive a code?",
                    style: AppTextStyles.heading4),
                TextSpan(text: " Resend SMS", style: AppTextStyles.heading4.copyWith(color: Color(0xFF1A60E2))),
              ]),
            ),
            const Gap(2),
            Text(
              "Wrong number",
              style: AppTextStyles.heading5,
            ),
            const Gap(31),
            SizedBox(
                height: 50,
                width: 328,
                child: ElevatedButton(
                    onPressed: () {
                      print("Entered PIN: ${_pinController.text}");
                    },
                    child: Text(
                      "Verify number",
                      style: AppTextStyles.heading6,
                    ),style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF1A60E2)),)),
            const Gap(22),
            RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "By continuing you're indicating that you accept our",
                    style: AppTextStyles.heading7.copyWith(color: Color(0xFF4E4E4E))),
                // TextSpan(text: "Term of use",
                //     style: AppTextStyles.heading7),
              ]),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Terms of Use",
                  style: AppTextStyles.heading7.copyWith(
                    decoration: TextDecoration.underline,
                    color: Color(0xFF4E4E4E) // Optional: Override the color if needed
                  ),
                ),
                Text(" and our",style: AppTextStyles.heading7.copyWith(color: Color(0xFF4E4E4E))),
                Text(
                  " Privacy Policy",
                  style: AppTextStyles.heading7.copyWith(
                      decoration: TextDecoration.underline,
                      color: Color(0xFF4E4E4E) // Optional: Override the color if needed
                  ),
                ),
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
