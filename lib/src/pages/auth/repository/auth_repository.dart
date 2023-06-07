import 'package:greengrocer/src/constants/endpoint.dart';
import 'package:greengrocer/src/services/http_manager.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();
  Future signIn({required String email, required String password}) async {
    final result = await _httpManager
        .restRequest(url: Endpoints.signin, method: HttpMethods.post, body: {
      "email": email,
      "password": password,
    });

    if (result['result'] != null) {
      print("SignIn OK");
      print(result["result"]);
    } else {
      print("SignIn, Falhou");
      print(result['error']);
    }
  }
}
