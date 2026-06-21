import 'package:flutter/material.dart';

class ExpenseModel {
  final String id;
  final String title;
  final String category;
  final double amount;
  final bool isExpense;
  final String description;
  final String attachImagePath;
  final DateTime createdDate;
  final TimeOfDay createdTime;

  ExpenseModel({
    required this.id,
    required this.title,
    required this.category,
    required this.amount,
    required this.isExpense,
    required this.description,
    required this.attachImagePath,
    required this.createdDate,
    required this.createdTime,
  });
}
