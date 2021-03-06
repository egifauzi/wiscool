part of 'models.dart';

enum TransactionStatus { deliverd, on_delivery, pending, cancelled }

class Transaction extends Equatable {
  final int id;
  final Food food;
  final int quantity;
  final int total;
  final DateTime dateTime;
  final TransactionStatus status;
  final User user;

  Transaction(
      {this.id,
      this.food,
      this.quantity,
      this.total,
      this.dateTime,
      this.status,
      this.user});

  Transaction copyWith(
      {int id,
      Food food,
      int quantity,
      int total,
      DateTime dateTime,
      TransactionStatus status,
      User user}) {
    return Transaction(
        id: id ?? this.id,
        food: food ?? this.food,
        quantity: quantity ?? this.quantity,
        total: total ?? this.total,
        dateTime: dateTime ?? this.dateTime,
        status: status ?? this.status,
        user: user ?? this.user);
  }

  @override
  List<Object> get props => [id, food, quantity, total, dateTime, status, user];
}

List<Transaction> mockTransactions = [
  Transaction(
      id: 1,
      food: mockFoods[1],
      quantity: 4,
      total: (mockFoods[1].price * 4 * 1.1).round() +
          50000, ////Harga  dikali quantity 4 * pajak 10% tambah ongkir ||ROUND = dibulatkan/ double to int
      dateTime: DateTime.now(),
      status: TransactionStatus.on_delivery,
      user: mockUser),
  Transaction(
      id: 2,
      food: mockFoods[4],
      quantity: 10,
      total: (mockFoods[4].price * 10 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.cancelled,
      user: mockUser),
  Transaction(
      id: 3,
      food: mockFoods[2],
      quantity: 1,
      total: (mockFoods[2].price * 1 * 1.1).round() + 50000,
      dateTime: DateTime.now(),
      status: TransactionStatus.deliverd,
      user: mockUser),
];
