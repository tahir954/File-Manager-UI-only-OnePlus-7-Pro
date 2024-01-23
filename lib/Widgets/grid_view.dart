import 'package:flutter/material.dart';

class Grid_View extends StatelessWidget {
  final IconData icon;
  final String label;
  final String count;
  const Grid_View({super.key, required this.icon, required this.label, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(26, 26, 26, 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 25,
            color: Color.fromRGBO(46, 64, 234, 1),
          ),
          Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            count,
            style: TextStyle(color: Colors.white54,),
          ),
        ],
      ),
    );
  }
}
