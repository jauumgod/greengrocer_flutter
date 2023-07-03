import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());


class UtilsServices {
  final storage = const FlutterSecureStorage();
  //criar 
  
  //salvar dados localmente
  
  Future<void> saveLocalData({required String key, String? data}) async {
    await storage.write(key: key, value: data);
  }

  //recuperar dados salvos
  Future<String?> getLocalData({required String key}) async {
    String? valor = await storage.read(key: key);
    return valor;
  }

  //remover dados salvos
  Future<void> removeLocalData({required String key}) async {
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
