import 'package:flutter/material.dart';
import 'package:mentor_app/components/full_width_button.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class Intro extends StatefulWidget {
  const Intro({
    Key? key,
  }) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _editTextIntro = TextEditingController();

  String textIntro = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundInput,
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
                    '/icons/profile/myself.png',
                    height: 20,
                    color: textBlue1,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Giới thiệu',
                    style: PrimaryFont.medium500(14, textWhite),
                  ),
                ],
              ),
              GestureDetector(
                child: Image.asset(
                  '/icons/pen.png',
                  height: 17,
                  color: Colors.white60,
                ),
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        color: backgroundMainScreen,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 50,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Chỉnh sửa giới thiệu bản thân',
                                style: PrimaryFont.bold600(18, textWhite),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Form(
                                child: SizedBox(
                                  // height: 200,
                                  child: TextFormField(
                                    onChanged: (value) {
                                      setState(() {
                                        textIntro = value;
                                      });
                                    },
                                    onSaved: (newValue) {
                                      textIntro = newValue!;
                                    },
                                    controller: _editTextIntro,
                                    decoration: InputDecoration(
                                      counterStyle: PrimaryFont.regular400(
                                          12, textSilver),
                                    ),
                                    style: PrimaryFont.regular400(
                                      14,
                                      textSilver,
                                    ).copyWith(
                                      height: 1.5,
                                    ),
                                    textAlign: TextAlign.start,
                                    minLines: 5,
                                    maxLines: 5,
                                    maxLength: 500,
                                    keyboardType: TextInputType.multiline,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              FullWidthButton(
                                text: 'Lưu thay đổi',
                                press: () {
                                  setState(() {
                                    _editTextIntro.notifyListeners();
                                  });
                                  _formKey.currentState!.save();
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              (_editTextIntro.value.text.isEmpty)
                  ? Text(
                      'Thêm giới thiệu bản thân',
                      style: PrimaryFont.regular400(14, textGrey1),
                    )
                  : Text(
                      '${_editTextIntro.value.text}',
                      style: PrimaryFont.regular400(14, textGrey1),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
