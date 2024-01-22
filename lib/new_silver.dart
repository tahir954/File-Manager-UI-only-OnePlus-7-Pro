import 'package:flutter/material.dart';

class CustomAppBarSilver extends StatelessWidget {
  const CustomAppBarSilver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true, // Pin the app bar to the top
      elevation: 0,
      expandedHeight: 150.0, // Set the expanded height
      flexibleSpace: FlexibleSpaceBar(
        title: Text('Files', style: TextStyle(fontSize: 24)),
        centerTitle: true,
        background: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 56.0, // Search bar height
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
