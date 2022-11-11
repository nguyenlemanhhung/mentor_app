import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/model/field_data.dart';

class FieldComponent extends StatelessWidget {
  const FieldComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lĩnh vực bạn quan tâm',
            style: PrimaryFont.bold700(18, textWhite),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: MasonryGridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: fieldData.length,
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: bgInput,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          fieldData[index].image,
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          fieldData[index].title,
                          style: PrimaryFont.bold600(14, textWhite),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
