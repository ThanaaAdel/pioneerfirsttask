import 'package:flutter/material.dart';
import 'Only10Iyems.dart';

class Only10ItemsListView extends StatelessWidget {
  const Only10ItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: Only10Items(),
            );
          }),
    );
  }
}
