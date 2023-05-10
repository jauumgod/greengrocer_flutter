import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/services/utils_services.dart';

import '../../../models/item_model.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  ItemTile({Key? key, required this.item}) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          //IMAGEM
          Expanded(child: Image.asset(item.imgURL)),
          //NOME
          Text(
            item.itemName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          //PREÇO
          Row(
            children: [
              Text(
                utilsServices.priceToCurrency(item.price),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: CustomColors.customSwatchColor,
                ),
              ),
              Text(
                '/${item.unit}',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              )
            ],
          )
          //UNIDADE DE MEDIDA
        ]),
      ),
    );
  }
}
