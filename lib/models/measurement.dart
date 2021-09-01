import 'package:flutter/material.dart';

enum BodyPart {
  RightUpperArm,
  RightLowerArm,
  RightUpperLeg,
  RightLowerLeg,
  LeftUpperArm,
  LeftLowerArm,
  LeftUpperLeg,
  LeftLowerLeg,
  Waist,
  Hips,
  Bust
}

class Measurement {
  String id;
  DateTime date;
  BodyPart bodyPart;
  double measurement;

  Measurement({
    required this.id,
    required this.date,
    required this.bodyPart,
    required this.measurement,
  });
}
