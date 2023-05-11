import 'package:greengrocer/src/models/cart_item_model.dart';

class OrderModel {
  String id, status, copyAndPaste;
  double total;
  DateTime createdDateTime;
  DateTime overdueDateTime;
  List<CartItemModel> items;

  OrderModel(
      {required this.createdDateTime,
      required this.id,
      required this.copyAndPaste,
      required this.items,
      required this.overdueDateTime,
      required this.status,
      required this.total,
      });
}
