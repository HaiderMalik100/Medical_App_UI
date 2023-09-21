import 'package:flutter/material.dart';

class DoctorModel {
  final String name;
  final String position;
  final double averageReview;
  final int totalReview;
  final String profile;

  DoctorModel(
      {required this.name,
      required this.position,
      required this.averageReview,
      required this.totalReview,
      required this.profile});
}

List<DoctorModel> nearbyDoctors = [
  DoctorModel(
      name: "Luke Holland",
      position: "General Practitioner",
      averageReview: 4.0,
      totalReview: 200,
      profile: 'asset/images/doctor_1.jpg'),
  DoctorModel(
      name: "Sophie Harmon",
      position: "Cardiologist",
      averageReview: 3.0,
      totalReview: 120,
      profile: 'asset/images/doctor_2.jpg'),
  DoctorModel(
      name: "Louise Reid",
      position: "Rectal Surgeons",
      averageReview: 5.0,
      totalReview: 500,
      profile: 'asset/images/doctor_3.jpg'),
];
