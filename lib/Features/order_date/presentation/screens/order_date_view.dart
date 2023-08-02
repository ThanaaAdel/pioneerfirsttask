import 'package:flutter/material.dart';
import 'package:pioneerfirsttask/Features/order_date/presentation/screens/widgets/order_date_list_view.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/custom_title_view.dart';
import 'package:pioneerfirsttask/constance.dart';

class OrderDateItemsView extends StatelessWidget {
  const OrderDateItemsView({Key? key}) : super(key: key);

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
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_outlined),
                    color: kTitleColor,
                  ),
                  CustomTitleView(
                    title: kOrderDate,
                  ),
                ],
              ),
              sizedBox10h,
              const OrderDateItemsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
