import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class UtilsServices {
  //salvar dados localmente
  final storage = const FlutterSecureStorage();
  Future<void> saveLocalData({required String key, String? data}) async {
    print("Salvando o token...");
    await storage.write(key: key, value: data);
  }

  //recuperar dados salvos
  Future<String?> getLocalData({required String key}) async {
    print("token recuperado");
    await storage.read(key: key);
    return key;
  }

  //remover dados salvos
  Future<void> removeLocalData({required String key}) async {
    print("removendo token");
    await storage.delete(key: key);
  }

  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return numberFormat.format(price);
  }

  //fomatar a Data
  String formatDateTime(DateTime datetime) {
    initializeDateFormatting();

    DateFormat dateFormat = DateFormat.yMd('pt_BR').add_Hm();
    return dateFormat.format(datetime);
  }

//function
  void showToast({
    required String message,
    bool isError = false,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: isError ? Colors.red : Colors.white,
      textColor: isError ? Colors.white : Colors.black,
      fontSize: 14,
    );
  }
}
