import 'package:flutter/material.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/custom_title_view.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/feature_list_view.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/only10_items_list_view.dart';
import 'package:pioneerfirsttask/constance.dart';
import 'package:pioneerfirsttask/core/utils/styles.dart';

import '../../../repository_50_items/presentation/screens/only50_items.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTitleView(
                    title: kOrderStar,
                  ),
                ],
              ),
              const FeaturedRepositoryListView(),
              const Divider(
                height: 10,
                color: kTitleColor,
                thickness: 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTitleView(
                    title: kOrder10,
                  ),
                  Row(
                    children: [
                      const Text(
                        '50',
                        style: Styles.textStyle16,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Only50ItemsView(),
                              ));
                        },
                        icon: const Icon(Icons.arrow_right_alt),
                        color: kTitleColor,
                      ),
                    ],
                  )
                ],
              ),
              sizedBox10h,
              const Only10ItemsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
