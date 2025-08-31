import 'package:flutter/material.dart';

// Model for errands
class ErrandModel {
  String errand;
  IconData iconType;
  String route;

  String errand;      
  IconData iconType; 
  String route;       

  ErrandModel({
    required this.errand,
    required this.iconType,
    required this.route
    required this.route,
  });

  static List<ErrandModel> getErrands(){
  // Returns list of available errands
  static List<ErrandModel> getErrands() {
    List<ErrandModel> errands = [];

    errands.add(
      ErrandModel(
        errand: 'Delivery', 
        errand: 'Delivery',
        iconType: Icons.delivery_dining,
        route: '/delivery'
      )
        route: '/delivery',
      ),
    );

    errands.add(
      ErrandModel(
        errand: 'Cleaning', 
        errand: 'Cleaning',
        iconType: Icons.cleaning_services,
        route: '/cleaning'
      )
        route: '/cleaning',
      ),
    );

    errands.add(
      ErrandModel(
        errand: 'Shopping', 
        errand: 'Shopping',
        iconType: Icons.shopping_bag,
        route: '/shopping'
      )
        route: '/shopping',
      ),
    );

    errands.add(
      ErrandModel(
        errand: 'Pet Sitting', 
        errand: 'Pet Sitting',
        iconType: Icons.pets,
        route: '/pet'
      )
        route: '/pet',
      ),
    );

    // Example of adding a custom errand
    /* errands.add(
      ErrandModel(
        errand: 'Custom', 
        iconType: Icons.add
      )
    ); */

    return errands;
  }

}
