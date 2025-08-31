import 'package:flutter/material.dart';

// Model for errands
class SpecializedErrandModel {
  String errand;
  IconData iconType;
  String route;

  SpecializedErrandModel({
    required this.errand,
    required this.iconType,
    required this.route
  });

  static List<SpecializedErrandModel> getErrands() {
    List<SpecializedErrandModel> specialErrands = [];

   specialErrands.add(
      SpecializedErrandModel(
        errand: 'Document Processing', 
        iconType: Icons.file_open,
        route: '/documents'
      )
    );


    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Tech Assistance', 
        iconType: Icons.laptop,
        route: '/tech'
      )
    );

    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Home Repair', 
        iconType: Icons.home,
        route: '/homerepair'
      )
    );

    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Health and Wellness', 
        iconType: Icons.health_and_safety,
        route: '/health'
      ),
    );
    return specialErrands;
  }
}
