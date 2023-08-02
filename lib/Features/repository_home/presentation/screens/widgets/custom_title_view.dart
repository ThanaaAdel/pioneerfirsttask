import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomTitleView extends StatelessWidget {
  CustomTitleView({super.key, required this.title});
  String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Styles.textStyle20,
      ),
    );
  }
}
