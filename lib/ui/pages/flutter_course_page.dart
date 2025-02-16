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
            child: buildCourseFocus(context),),
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

  Widget buildCourseFocus(context) {
    return Column(
      children: [
        Row(children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Text('Course focus')))
        ],),
        SizedBox(height: MediaQuery.of(context).size.width * 0.02),
        Row(children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
              child: Row(children: [
                Expanded(child: Container(color: Colors.yellow, height: 2)),
                Expanded(child: Container(color: Colors.blue, height: 2)),
                Expanded(child: Container(color: Colors.red, height: 2)),
              ],),
            ),)
        ],),
        SizedBox(height: MediaQuery.of(context).size.width * 0.02),
        Row(children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('UI Development'),
                Text('Architecture'),
                Text('Design thinking Testing')
            ],))
        ],),
      ],
    );
  }

  Widget buildModules() {
    return const Text("Modules");
  }

  Widget buildProjectList() {
    return const Text("Projects");
  }
}
