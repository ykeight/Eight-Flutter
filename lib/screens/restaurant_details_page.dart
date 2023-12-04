import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projj/screens/menu_item.dart';

// ignore: unused_import
import 'menu_list.dart';
import 'restaurant_model.dart';

class RestaurantDetailsPage extends StatefulWidget {
  final String restaurantId;

  const RestaurantDetailsPage({super.key, required this.restaurantId});

  @override
  State<RestaurantDetailsPage> createState() => _RestaurantDetailsPageState();
}

class _RestaurantDetailsPageState extends State<RestaurantDetailsPage> {
  // ignore: unused_field
  Future<Restaurant>? _restaurantFuture;
  // ignore: unused_field
  Future<List<MenuItem>>? _menuItemsFuture;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
