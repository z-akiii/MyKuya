import 'package:flutter/material.dart';

// Model for errands
class SpecializedErrandModel {
  String errand;
  String? iconPath;
  IconData? iconType;
  String route;

  SpecializedErrandModel({
    required this.errand,
    this.iconType,
    this.iconPath;
    required this.route
  });

  static List<SpecializedErrandModel> getErrands() {
    List<SpecializedErrandModel> specialErrands = [];

   specialErrands.add(
      SpecializedErrandModel(
        errand: 'Document Processing', 
        iconType: Icons.file_open,
        iconPath: 'assets/icons/documents.png',
        route: '/documents'
      )
    );


    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Tech Assistance', 
        iconType: Icons.laptop,
        iconPath: 'assets/icons/tech.png',
        route: '/tech'
      )
    );

    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Home Repair', 
        iconType: Icons.home
        iconPath: 'assets/icons/homerepair.png',
        route: '/homerepair'
      )
    );

    specialErrands.add(
      SpecializedErrandModel(
        errand: 'Health and Wellness', 
        iconType: Icons.health_and_safety,
        iconPath: 'assets/icons/health.png'
        route: '/health'
      ),
    );
    return specialErrands;
  }
}
