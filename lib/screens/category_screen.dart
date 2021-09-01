import 'package:body_measurement/models/measurement.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  var category_list = [
    "Right Upper Arm",
    "Right Lower Arm",
    "Right Upper Leg",
    "Right Lower Leg",
    "Left Upper Arm",
    "Left Lower Arm",
    "Left Upper Leg",
    "Left Lower Leg",
    "Waist",
    "Hips",
    "Bust"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Image.asset("assets/images/logo.png"),
          ),
        ),
        title: Column(
          children: [
            Text(
              "Body Measurements",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "By Concentric",
              style: TextStyle(color: Colors.black, fontSize: 12),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: BodyPart.values.length,
        itemBuilder: (_, i) => Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              SizedBox(
                height: 10,
              ),
              Text("${category_list[i]}"),
            ],
          ),
        ),
      ),
    );
  }
}
