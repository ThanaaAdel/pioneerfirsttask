import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CustomListViewItems extends StatefulWidget {
  const CustomListViewItems({Key? key}) : super(key: key);

  @override
  State<CustomListViewItems> createState() => _CustomListViewItemsState();
}

class _CustomListViewItemsState extends State<CustomListViewItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              image: AssetImage(
                AssetsData.testImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
