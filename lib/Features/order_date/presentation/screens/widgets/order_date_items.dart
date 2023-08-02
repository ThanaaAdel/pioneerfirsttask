import 'package:flutter/material.dart';
import '../../../../../constance.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class OrderDateItems extends StatelessWidget {
  const OrderDateItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
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
          sizedBox15w,
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'name Repository ',
                style: Styles.textStyle20,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'description of repository ',
                style: Styles.textStyle14,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              sizedBox10h,
              Text(
                'owner id ',
                style: Styles.textStyle14,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'url githup ',
                style: Styles.textStyle14,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
