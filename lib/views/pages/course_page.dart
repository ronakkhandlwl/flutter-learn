import 'package:flutter/material.dart';
import 'package:flutter_app/data/classes/activity_class.dart';
import 'package:flutter_app/views/widget/hero_widget.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    var url = Uri.https('bored-api.appbrewery.com', '/random');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      return Activity.fromJson(jsonResponse);
    } else {
      print("The request was unsuccessful");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            Activity activity = snapshot.data;
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(children: [HeroWidget(title: activity.activity)]),
              ),
            );
          } else {
            return Center(child: Text("Error loading data $snapshot"));
          }
        },
      ),
    );
  }
}
