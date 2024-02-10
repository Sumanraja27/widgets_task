import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:widgets_task/utlis/constant.dart';

class CustomLoading extends StatelessWidget {
const CustomLoading({Key? key}):super(key: key);

@override
Widget build(BuildContext context) {
  return Shimmer.fromColors(
    baseColor:HRMSConstant.shimmerBaseColor,
    highlightColor: HRMSConstant.shimmerHighlightColor,
    child: ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Container(
            height: 70,
          ),
        );
      },
    ),
  );
}
}