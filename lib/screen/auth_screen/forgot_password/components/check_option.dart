import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class CheckOptionSendLink extends StatefulWidget {
  const CheckOptionSendLink({
    super.key,
  });

  @override
  State<CheckOptionSendLink> createState() => _CheckOptionSendLinkState();
}

class _CheckOptionSendLinkState extends State<CheckOptionSendLink> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundInput,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: checkedValue ? textBlue1 : Colors.transparent,
        ),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Checkbox(
                // fillColor: MaterialStateProperty.resolveWith((states) => null),
                shape: CircleBorder(),
                // fillColor: MaterialStateProperty.,
                activeColor: backgroundYellow,
                value: checkedValue,
                onChanged: ((value) {
                  setState(() {
                    checkedValue = value!;
                  });
                }),
              ),
              // const SizedBox(
              //   width: 5,
              // ),
              Text(
                'Send to your email',
                style: PrimaryFont.bold600(
                  16,
                  checkedValue ? textBlue1 : textWhite,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 45,
            ),
            child: Text(
              'Link reset will be send to your email address registered',
              style: PrimaryFont.regular400(14, textGrey1),
            ),
          ),
        ],
      ),
    );
  }
}
