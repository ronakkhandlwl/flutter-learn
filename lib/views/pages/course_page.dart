import 'package:flutter/material.dart';
import 'package:flutter_app/views/widget/hero_widget.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(children: [HeroWidget(title: "Course Page")]),
        ),
      ),
    );
  }
}
