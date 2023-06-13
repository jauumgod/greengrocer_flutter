import 'package:greengrocer/src/constants/endpoint.dart';
import 'package:greengrocer/src/models/user_model.dart';
import 'package:greengrocer/src/services/http_manager.dart';

import '../result/auth_result.dart';
import 'auth_errors.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();
  Future<AuthResult> signIn(
      {required String email, required String password}) async {
    final result = await _httpManager
        .restRequest(url: Endpoints.signin, method: HttpMethods.post, body: {
      "email": email,
      "password": password,
    });

    if (result['result'] != null) {
      
      final user = UserModel.fromJson(result['result']);
      return AuthResult.success(user);

    } else {

      return AuthResult.error(authErrorsString(result['error']));
    }
  }
}  
