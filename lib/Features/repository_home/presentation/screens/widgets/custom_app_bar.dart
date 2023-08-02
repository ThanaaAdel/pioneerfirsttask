import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Show Repository",
        style: Styles.textStyle20,
      ),
    );
  }
}
