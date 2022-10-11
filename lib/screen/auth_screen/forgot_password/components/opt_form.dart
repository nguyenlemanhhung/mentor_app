import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 60,
            width: 55,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              style: PrimaryFont.medium500(24, textWhite),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
          ),
          SizedBox(
            height: 60,
            width: 55,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              style: PrimaryFont.medium500(24, textWhite),
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
            ),
          ),
          SizedBox(
            height: 60,
            width: 55,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              style: PrimaryFont.medium500(24, textWhite),
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
            ),
          ),
          SizedBox(
            height: 60,
            width: 55,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              textAlign: TextAlign.center,
              style: PrimaryFont.medium500(24, textWhite),
              keyboardType: TextInputType.number,
              inputFormatters: [LengthLimitingTextInputFormatter(1)],
            ),
          ),
        ],
      ),
    );
  }
}
