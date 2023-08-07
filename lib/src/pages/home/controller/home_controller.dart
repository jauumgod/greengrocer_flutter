import 'package:get/get.dart';
import 'package:greengrocer/src/pages/home/repository/home_repository.dart';

import '../result/home_result.dart';

class HomeController extends GetxController {
  final homeRepository = HomeRepository();
  RxBool isLoading = false.obs;

  void setLoading(){
    
  }

  Future<void> getAllCategories() async {
    HomeResult homeResult = await homeRepository.getAllCategories();
  }
}
