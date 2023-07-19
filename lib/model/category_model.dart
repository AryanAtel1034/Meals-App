import 'package:flutter/material.dart';

class CategoryModel {
  const CategoryModel({
    this.color = Colors.blueGrey,
    required this.id,
    required this.title,
  });

  final String id;
  final String title;
  final Color color;
}
