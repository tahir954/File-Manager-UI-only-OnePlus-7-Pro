import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
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
              fontSize:12,
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
        constraints: BoxConstraints(minHeight: 0.0, maxHeight: 20),
        leading: Icon(
          Icons.search_sharp,
          size: 25,
          color: Color.fromRGBO(95, 95, 95, 1),
        ),
      ),
    );
  }
}
