import 'package:flutter/material.dart';

// Model for errands
class ErrandModel {
  String errand;
  String? iconPath;
  IconData iconType;
  String route;

  ErrandModel({
    required this.errand,
    this.iconType,
    this.iconPath,
    required this.route,
  });

  static List<ErrandModel> getErrands() {
    List<ErrandModel> errands = [];

    errands.add(
      ErrandModel(
        errand: 'Delivery', 
        iconType: Icons.delivery_dining,
        iconPath: 'assets/icons/delivery.jpg',
        route: '/delivery'
      )
    );


    errands.add(
      ErrandModel(
        errand: 'Cleaning', 
        iconType: Icons.cleaning_services,
        iconPath: 'assets/icons/cleaning.jpg',
        route: '/cleaning'
      )
    );

    errands.add(
      ErrandModel(
        errand: 'Shopping', 
        iconType: Icons.shopping_bag,
        iconPath: 'assets/icons/shopping.jpg',
        route: '/shopping'
      )
    );

    errands.add(
      ErrandModel(
        errand: 'Pet Sitting', 
        iconType: Icons.pets,
        iconPath: 'assets/icons/pet.png',
        route: '/pet'
      ),
    );
    return errands;
  }
}
