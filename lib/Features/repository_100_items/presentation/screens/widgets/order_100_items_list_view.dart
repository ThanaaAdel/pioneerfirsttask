import 'package:flutter/material.dart';
import 'order_100_items.dart';

class Only100ItemsListView extends StatelessWidget {
  const Only100ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Only100Items(),
            );
          }),
    );
  }
}
