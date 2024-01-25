import 'package:flutter/material.dart';

class bottom_navigation_bar extends StatelessWidget {
  final String label;
  final IconData bottomIcon;
  const bottom_navigation_bar({
    super.key, required this.label, required this.bottomIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(

         bottomIcon, size: 20,
          color: Colors.white,

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
