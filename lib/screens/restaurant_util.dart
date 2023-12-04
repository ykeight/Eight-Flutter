import 'package:projj/screens/restaurant_add_page.dart';

Map<String, dynamic> restaurantToJson(RestaurantAddPage restaurant) {
  return {
    'id': restaurant.id,
    'name': restaurant.name,
    'description': restaurant.description,
    'address': restaurant.address,
    'cuisineType': restaurant.cuisineType,
  };
}