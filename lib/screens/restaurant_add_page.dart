// ignore: unused_import
import 'dart:js_interop';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'restaurant_model.dart';

class RestaurantAddPage extends StatefulWidget {
  const RestaurantAddPage({super.key});

  get cuisineType => null;

  get address => null;

  get name => null;

  get description => null;

  get id => null;

  @override
  State<RestaurantAddPage> createState() => _RestaurantAddPageState();
}

class _RestaurantAddPageState extends State<RestaurantAddPage> {
  final _formKey = GlobalKey<FormState>();
  final _restaurantNameController = TextEditingController();
  final _restaurantDescriptionController = TextEditingController();
  final _restaurantAddressController = TextEditingController();
  final _restaurantCuisineTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Restaurant'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            TextFormField(
              controller: _restaurantNameController,
              decoration: const InputDecoration(labelText: 'Restaurant Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a restaurant name';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _restaurantDescriptionController,
              decoration: const InputDecoration(labelText: 'Restaurant Description'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a restaurant description';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _restaurantAddressController,
              decoration: const InputDecoration(labelText: 'Restaurant Address'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a restaurant address';
                }
                return null;
              },
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: _restaurantCuisineTypeController,
              decoration: const InputDecoration(labelText: 'Restaurant Cuisine Type'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a restaurant cuisine type';
                }
                return null;
              },
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final restaurant = Restaurant(
                    id: '',
                    name: _restaurantNameController.text,
                    description: _restaurantDescriptionController.text,
                    address: _restaurantAddressController.text,
                    cuisineType: _restaurantCuisineTypeController.text,
                  );

                  // Add restaurant to Firebase Firestore
                  final restaurantsRef = FirebaseFirestore.instance.collection('restaurants');
                  restaurantsRef.add(restaurant.toJson as Map<String, dynamic>);

                  // Clear form fields
                  _restaurantNameController.clear();
                  _restaurantDescriptionController.clear();
                  _restaurantAddressController.clear();
                  _restaurantCuisineTypeController.clear();

                  // Display success message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Restaurant added successfully')),
                  );
                }
              },
              child: const Text('Add Restaurant'),
            ),
          ],
        ),
      ),
    );
  }
}