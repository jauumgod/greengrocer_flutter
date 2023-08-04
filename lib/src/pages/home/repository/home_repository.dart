import 'package:greengrocer/src/constants/endpoint.dart';
import 'package:greengrocer/src/services/http_manager.dart';

class HomeRepository {
  final HttpManager _httpManager = HttpManager();

  getAllCategories() async {
    final result = await _httpManager.restRequest(
        url: Endpoints.getAllcategories, method: HttpMethods.post);

    if(result['result'] != null){
      //Lists
    }
    else{
      //Error
    }
  }
}
