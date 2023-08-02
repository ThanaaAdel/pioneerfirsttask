import 'package:flutter/material.dart';
import 'package:pioneerfirsttask/Features/repository_50_items/presentation/screens/widgets/only50_list_view.dart';
import 'package:pioneerfirsttask/Features/repository_home/presentation/screens/widgets/custom_title_view.dart';
import 'package:pioneerfirsttask/constance.dart';
import 'package:pioneerfirsttask/core/utils/styles.dart';
import '../../../repository_100_items/presentation/screens/only100_items.dart';

class Only50ItemsView extends StatelessWidget {
  const Only50ItemsView({Key? key}) : super(key: key);

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
                    title: kOrder50,
                  ),
                  Row(
                    children: [
                      const Text(
                        '100',
                        style: Styles.textStyle16,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Only100ItemsView(),
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
              const Only50ItemsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
