import 'package:flutter/material.dart';
import 'package:pioneerfirsttask/Features/repository_100_items/presentation/screens/widgets/order_100_items_list_view.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/custom_title_view.dart';
import 'package:pioneerfirsttask/constance.dart';
import 'package:pioneerfirsttask/core/utils/styles.dart';

import '../../../order_date/presentation/screens/order_date_view.dart';

class Only100ItemsView extends StatelessWidget {
  const Only100ItemsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 24, top: 60, bottom: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_left),
                    color: kTitleColor,
                  ),
                  CustomTitleView(
                    title: kOrder100,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OrderDateItemsView(),
                            ));
                      },
                      child: const Text(
                        'order date',
                        style: Styles.textStyle16,
                      ))
                ],
              ),
              sizedBox10h,
              const Only100ItemsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
