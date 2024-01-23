import 'package:flutter/material.dart';

class bottom_navigation_bar extends StatelessWidget {
  final String label;
  final Widget bottomIcon;
  const bottom_navigation_bar({
    super.key, required this.label, required this.bottomIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: bottomIcon,
          iconSize: 20,
        ),
        Text(
          label,style: TextStyle(
            fontSize: 10,
            color: Colors.white60),

        ),
      ],
    );
  }
}
