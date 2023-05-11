import 'package:flutter/material.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/services/utils_services.dart';

class OrderTile extends StatelessWidget {
  final OrderModel order;
  final UtilsServices utilsServices = UtilsServices();

  OrderTile({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Pedido: ${order.id}'),
              Text( utilsServices.formatDateTime(order.createdDateTime),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          children: [],
        ),
      ),
    );
  }
}
