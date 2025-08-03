import 'package:expenzo_app/features/home/data/models/category.dart';

class TransactionExpense {
  final int? id;
  final DateTime date;
  final Category category;
  final double amount;
  final String description;

  TransactionExpense({
    this.id,
    required this.date,
    required this.category,
    required this.amount,
    required this.description,
  });
  TransactionExpense copyWith({
    int? id,
    DateTime? date,
    Category? category,
    double? amount,
    String? description,
  }) {
    return TransactionExpense(
      id: id ?? this.id,
      date: date ?? this.date,
      category: category ?? this.category,
      amount: amount ?? this.amount,
      description: description ?? this.description,
    );
  }

  factory TransactionExpense.fromMap(Map<String, dynamic> map) {
    return TransactionExpense(
      id: map['id'],
      date: DateTime.parse(map['date']),
      category: Category(
        name: map['categoryName'],
        imageUrl: map['categoryImage'],
      ),
      amount: map['amount'],
      description: map['description'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'date': date.toIso8601String(),
      'categoryName': category.name,
      'categoryImage': category.imageUrl,
      'description': description,
    };
  }
}
