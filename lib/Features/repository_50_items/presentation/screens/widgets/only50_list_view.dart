import 'package:flutter/material.dart';

import 'only50_items.dart';

class Only50ItemsListView extends StatelessWidget {
  const Only50ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Only50Items(),
            );
          }),
    );
  }
}
