import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key, required this.title, this.nextPage})
    : super(key: key);
  final String title;
  final Widget? nextPage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextPage != null ? () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return nextPage!;
            },
          ),
        );
      } : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Hero(
            tag: 'hero1',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/image/bg.jpg',
                color: Colors.teal,
                colorBlendMode: BlendMode.modulate,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                letterSpacing: 10,
                color: Colors.white60,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
