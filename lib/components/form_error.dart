import 'package:flutter/material.dart';
import 'package:mentor_app/constants/colors.dart';
import 'package:mentor_app/constants/font.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
            errors.length, (index) => formErrorText(error: errors[index])));
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        Icon(
          Icons.highlight_remove_outlined,
          color: textRed,
          size: 15,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          error,
          style: PrimaryFont.regular400(12, textSilver).copyWith(
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
