import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/appdata.dart' as appData;
import 'package:greengrocer/src/pages/orders/components/order_tile.dart';

class OrdersTab extends StatelessWidget {
  const OrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        itemBuilder: (_, index)=> OrderTile(order: appData.orders[index]),
        itemCount: appData.orders.length,
      ),
    );
  }
}
