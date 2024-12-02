import 'package:flutter/material.dart';
import 'package:flutter_testpage/consts/text_styles.dart';

class Privacy extends StatelessWidget {
  const Privacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _button('Terms of use'),
        _button('Privacy policy'),
        _button('Restore purchase'),
      ],
    );
  }

  Widget _button(String title) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(side: BorderSide.none),
        child: Text(
          title,
          maxLines: 2,
          style: AppTextStyles.small,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
