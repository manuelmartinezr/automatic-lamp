import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // you may remove this widget if you don't want to use it
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: buildHeader(context),),
          Expanded(
            flex: 1,
            child: buildCourseFocus(),),
          Expanded(
            flex: 3,
            child: buildModules(),),
          Expanded(
            flex: 3,
            child: buildProjectList(),),
        ],
      ),
    ));
  }

  Widget buildHeader(context) {
    return Row(
      children: [
      Expanded(
        flex: 5,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Flutter course'),
              Text('2025-10'),
            ],
          ),
        ),),
      Expanded(
        flex: 1,
        child: Icon(Icons.search)),
      Expanded(
        flex: 1,
        child: Icon(Icons.notifications)),
    ],);
  }

  Widget buildCourseFocus() {
    return const Text("Focus on the course");
  }

  Widget buildModules() {
    return const Text("Modules");
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}
