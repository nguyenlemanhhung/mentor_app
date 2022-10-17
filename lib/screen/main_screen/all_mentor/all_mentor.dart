import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mentor_app/components/appbar_page_no_title.dart';
import 'package:mentor_app/components/divider_with_text.dart';
import 'package:mentor_app/components/mentor_card.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';
import 'package:mentor_app/model/mentor_data.dart';
import 'package:mentor_app/screen/main_screen/details_mentor/details_mentor.dart';

class AllMentorPage extends StatefulWidget {
  const AllMentorPage({super.key});
  static String routeName = '/all_mentor';
  @override
  State<AllMentorPage> createState() => _AllMentorPageState();
}

class _AllMentorPageState extends State<AllMentorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMainScreen,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    bottom: 30,
                  ),
                  child: Row(
                    children: [
                      AppbarPageNoTitle(),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Form(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: PrimaryFont.regular400(14, textWhite),
                            decoration: InputDecoration(
                              // labelText: 'Search',
                              hintText: 'Bạn cần cố vấn như thế nào',
                              prefixIcon: InkWell(
                                onTap: () {},
                                child: Image(
                                  image: AssetImage('/icons/search.png'),
                                ),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.filter_alt_outlined,
                                  color: textGrey1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                DividerWithText(text: 'All Mentor'),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: MasonryGridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsMentor(
                                  mentorContent: mentorData[index]),
                            ),
                          );
                        },
                        child: MentorCard(
                          name: mentorData[index].name,
                          company: mentorData[index].company,
                          image: mentorData[index].image,
                          position: mentorData[index].position,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
