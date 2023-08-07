import 'package:greengrocer/src/constants/endpoint.dart';
import 'package:greengrocer/src/models/category_model.dart';
import 'package:greengrocer/src/services/http_manager.dart';

import '../result/home_result.dart';

class HomeRepository {
  final HttpManager _httpManager = HttpManager();

  Future <HomeResult> getAllCategories() async {
    final result = await _httpManager.restRequest(
        url: Endpoints.getAllcategories, method: HttpMethods.post);

    if (result['result'] != null) {
      List<CategoryModel> data =
          (result['result'] as List<Map<String, dynamic>>)
              .map(CategoryModel.fromJson)
              .toList();

      return HomeResult<CategoryModel>.success(data);
    } else {
      return HomeResult.error(
          'Ocorreu um erro inesperado ao recuperar as categorias');
    }
  }
}
