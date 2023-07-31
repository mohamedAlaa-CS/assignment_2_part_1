import 'package:flutter/material.dart';

class StortItem extends StatelessWidget {
  const StortItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: AspectRatio(
        aspectRatio: 1.6 / 2.3,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('lib/assets/facebookStory.jpg'),
                      fit: BoxFit.cover)),
            ),
            const Positioned(
              bottom: 5,
              right: 30,
              child: Text(
                'owner',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(24)),
              child: const Icon(
                Icons.person,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
