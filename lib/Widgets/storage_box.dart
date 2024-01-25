import 'package:flutter/material.dart';
import 'package:p1/Constants/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

class storage_box extends StatelessWidget {
  const storage_box({
    super.key,
    required this.responsive,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsive.widthPercent(96) - 5,
      height: responsive.heightPercent(16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(46, 64, 234, 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Device Storage",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "138 GB",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                  ).pOnly(left: 4, right: 4),
                  Text(
                    '256 GB',
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: 0.45,
                minHeight: 10,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                backgroundColor: Colors.transparent.withOpacity(0.3),
              ).pOnly(bottom: 15, top: 5, right: 12),
            ],
          ),
        ],
      ).pOnly(left: 15, top: 15,),
    ).pOnly(bottom: 5);
  }
}
