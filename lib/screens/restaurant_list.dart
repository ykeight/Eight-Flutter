import 'package:flutter/material.dart';

import 'restaurant_model.dart';

class RestaurantList extends StatelessWidget {
  final List<Restaurant> restaurants;

  const RestaurantList({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = restaurants[index];
        return ListTile(
          title: Text(restaurant.name),
          subtitle: Text(restaurant.description),
          onTap: () {
            Navigator.pushNamed(context, '/restaurant-details',
                arguments: restaurant.id);
          },
        );
      },
    );
  }
}