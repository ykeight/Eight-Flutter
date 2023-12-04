import 'package:projj/screens/restaurant_add_page.dart';
import 'package:projj/screens/restaurant_util.dart';

class Restaurant {
  final String id;
  final String name;
  final String description;
  final String address;
  final String cuisineType;

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.cuisineType,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      address: json['address'],
      cuisineType: json['cuisineType'],
    );
  }

  Map<String, dynamic> toJson() {
    return restaurantToJson(this as RestaurantAddPage); // Use the function from restaurant_util.dart
  }
}