import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/screen/auth_screen/forgot_password/components/opt_form.dart';

import '../../../constants/colors.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});
  static String routeName = '/verification_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('/images/auth/bg_auth.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('/icons/back_arrow.png'),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verification',
                          style: PrimaryFont.bold700(30, textWhite),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'We have sent code to your number\n+6287789909102',
                          style: PrimaryFont.regular400(14, textSilver),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    OtpForm(),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Didn’t receive link?',
                          style: PrimaryFont.bold600(14, textSilver),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Resend',
                            style: PrimaryFont.bold600(14, textBlue1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
