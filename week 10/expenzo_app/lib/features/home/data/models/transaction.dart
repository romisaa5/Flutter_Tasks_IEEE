import 'package:expenzo_app/features/home/data/models/category.dart';

class Transaction {
  final DateTime date;
  final Category category;
  final double amount;

  Transaction({
    required this.date,
    required this.category,
    required this.amount,
  });
  static List<Transaction> transactions = [
    Transaction(
      date: DateTime(2025, 8, 1),
      category: Category(name: 'Coffee', imageUrl: 'assets/images/coffee.png'),
      amount: 35.0,
    ),
    Transaction(
      date: DateTime(2025, 8, 2),
      category: Category(
        name: 'Pet Care',
        imageUrl: 'assets/images/pet_care.png',
      ),
      amount: 120.0,
    ),
    Transaction(
      date: DateTime(2025, 8, 3),
      category: Category(
        name: 'Commute',
        imageUrl: 'assets/images/commute.png',
      ),
      amount: 50.0,
    ),
  ];
}
