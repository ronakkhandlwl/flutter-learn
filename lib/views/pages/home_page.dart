import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/course_page.dart';
import 'package:flutter_app/views/widget/container_widget.dart';
import 'package:flutter_app/views/widget/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeroWidget(title: "Welcome to home page", nextPage: CoursePage(),),
            ...List.generate(5, (index) {
              return ContainerWidget(
                title: "Some title",
                description: "Description of the container ${index+1}",
              );
            }),
          ],
        ),
      ),
    );
  }
}
