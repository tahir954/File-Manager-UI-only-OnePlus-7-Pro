import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Search_bar_Widget extends StatelessWidget {
  const Search_bar_Widget({
    super.key,
    required double searchBarHeight,
  }) : _searchBarHeight = searchBarHeight;

  final double _searchBarHeight;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      height: _searchBarHeight,
      child: SearchBar(
        backgroundColor: MaterialStatePropertyAll(
          Color.fromRGBO(
            29,
            29,
            25,
            1,
          ),
        ),
        hintStyle: MaterialStatePropertyAll(
          MaterialStateTextStyle.resolveWith(
            (states) => TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.normal,
              color: Color.fromRGBO(95, 95, 95, 1),
            ),
          ),
        ),
        hintText: "Search",
        textStyle: MaterialStatePropertyAll(
          MaterialStateTextStyle.resolveWith(
            (states) => TextStyle(
              color: Colors.white60,
              decorationColor: Color.fromRGBO(95, 95, 95, 1),
              fontSize: 12,
              height: 1,
            ),
          ),
        ),
      ).pOnly(top: 4, bottom: 10, left: 10, right: 10),
    );
  }
}
