import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomPercentIndicator extends StatelessWidget {

  final String? title;
  final double? indicatorWidth;

  const CustomPercentIndicator({
    super.key, this.title, this.indicatorWidth
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$title"),
          const SizedBox(height: 4,),
          Stack(
            children: [
              Container(
                height: 24,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
              Container(
                height: 24,
                width: indicatorWidth,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}