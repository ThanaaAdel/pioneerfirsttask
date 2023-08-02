import 'package:flutter/material.dart';

import 'order_date_items.dart';

class OrderDateItemsListView extends StatelessWidget {
  const OrderDateItemsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: OrderDateItems(),
            );
          }),
    );
  }
}
