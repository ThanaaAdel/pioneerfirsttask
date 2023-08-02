import 'package:flutter/material.dart';

import 'custom_image_view.dart';

class FeaturedRepositoryListView extends StatelessWidget {
  const FeaturedRepositoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomListViewItems(),
            );
          }),
    );
  }
}
