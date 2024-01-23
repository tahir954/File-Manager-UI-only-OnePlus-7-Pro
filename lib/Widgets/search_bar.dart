import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
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
            fontSize: 8,
            fontWeight: FontWeight.normal,
            color: Color.fromRGBO(95, 95, 95, 1),
          ),
        ),
      ),
      hintText: "Search",
      textStyle: MaterialStatePropertyAll(
        MaterialStateTextStyle.resolveWith(
          (states) => TextStyle(
            color: Color.fromRGBO(95, 95, 95, 1),
            decorationColor: Color.fromRGBO(95, 95, 95, 1),
            fontSize: 10,
            height: 1,
          ),
        ),
      ),
      constraints: BoxConstraints(minHeight: 0.0, maxHeight: 20),
      leading: Icon(
        Icons.search_sharp,
        size: 12,
        color: Color.fromRGBO(95, 95, 95, 1),
      ),
    );
  }
}
