import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgInput,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    '/icons/profile/skill.png',
                    height: 30,
                    color: textBlue1,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Kỹ năng',
                    style: PrimaryFont.medium500(14, textWhite),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Image.asset(
                  '/icons/pen.png',
                  height: 17,
                  color: Colors.white60,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                '- Hoà đồng, thân thiện, nhưng rất nghiêm túc và đồi hỏi trách nhiệm cao trong công việc',
                style: PrimaryFont.regular400(14, textGrey1),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
