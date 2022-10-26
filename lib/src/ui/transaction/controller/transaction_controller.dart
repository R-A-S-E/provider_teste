import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransActionController {
  final List<String> categoryList = ['Viagem', 'Comida', 'Roupa', 'Transporte'];

  IconData icon(String category) {
    if (category == 'Comida') {
      return Icons.travel_explore;
    } else {
      return Icons.place;
    }
  }

  String category = 'Viagem';

  String title = '';

  double value = 0;
}
