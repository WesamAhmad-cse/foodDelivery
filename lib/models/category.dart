import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String imageUrl;
  final VoidCallback onTap;
  const Category({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.onTap,
  });
}

List<Category> dummyCategories = [
  Category(
    id: '1',
    title: 'Burger',
    imageUrl: 'assets/images/burger.png',
    onTap: () {},
  ),
  Category(
    id: '2',
    title: 'Taco',
    imageUrl: 'assets/images/taco.png',
    onTap: () {},
  ),
  Category(
    id: '3',
    title: 'Pizza',
    imageUrl: 'assets/images/pizza.png',
    onTap: () {},
  ),
  Category(
    id: '4',
    title: 'Drink',
    imageUrl: 'assets/images/drink.png',
    onTap: () {},
  ),
  Category(
    id: '5',
    title: 'Chicken',
    imageUrl: 'assets/images/chicken.png',
    onTap: () {},
  ),
  Category(
    id: '1',
    title: 'Cake',
    imageUrl: 'assets/images/cake.png',
    onTap: () {},
  ),
];
