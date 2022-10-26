import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class TabBarCertificate extends StatelessWidget {
  const TabBarCertificate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Bạn chưa nhận được chứng chỉ nào từ Mentori. Hãy theo dõi các kênh Group Facebook "Mentori Community" và website http://www.mentori.vn để đăng ký tham gia ngay khi Mentori có chương trình mới nhé',
              style: PrimaryFont.regular400(14, textGrey1),
            ),
          ],
        ),
      ),
    );
  }
}
