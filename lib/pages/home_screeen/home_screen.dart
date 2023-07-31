import 'package:flutter/material.dart';

import '../widget/post_item.dart';
import '../widget/stort_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String pageName = 'homeScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8,),
        child: Column(
          children: [
            SizedBox(
               height: MediaQuery.sizeOf(context).height/6,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
               itemBuilder: (context, index) => const StortItem(),
              ),
            ),
          const PostItem(),
           const PostItem()
          ],
        ),
      ),
    );
  }
}
