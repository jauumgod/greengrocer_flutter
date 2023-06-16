import 'package:get/get.dart';
import 'package:greengrocer/src/constants/storage_keys.dart';
import 'package:greengrocer/src/pages/auth/repository/auth_repository.dart';
import 'package:greengrocer/src/pages_routes/app_pages.dart';
import 'package:greengrocer/src/services/utils_services.dart';

import '../../../models/user_model.dart';
import '../result/auth_result.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();
  final utilServices = UtilsServices();

  UserModel user = UserModel();

  @override
  void onInit() {
    super.onInit();
    validateToken();
  }

  Future<void> validateToken() async {
    //recuperar o token salvo localmente
    String? token = await utilServices.getLocalData(key: StorageKeys.token);

    if (token == null) {
      Get.offAllNamed(PagesRoutes.signInRoute);
      print("redirecionando para tela inicial");
      return;
    }

    AuthResult result = await authRepository.validateToken(token);

    result.when(
      success: (user) {
        print("mantendo o login, token ok");
        this.user = user;
        saveTokenAndProceedToBase();
      },
      error: (message) {
        signOut();
      },
    );
    if (user.token != null) {
      print("mantendo o login, token ok");
      saveTokenAndProceedToBase();
    }
  }

  Future<void> signOut() async {
    print('sign out');
    //zerar user
    //user = UserModel();
    //remover token
    //await utilServices.removeLocalData(key: StorageKeys.token);
    //ir para login
    Get.offAllNamed(PagesRoutes.signInRoute);
  }

  void saveTokenAndProceedToBase() {
    //save token
    utilServices.saveLocalData(key: StorageKeys.token, data: user.token!);
    //ir para base
    Get.offAllNamed(PagesRoutes.baseRoute);
  }

  Future<void> signIn({required String email, required String password}) async {
    isLoading.value = true;

    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;

    result.when(success: (user) {
      this.user = user;
      print(user.token);
      print("passou aqui no token");

      saveTokenAndProceedToBase();
    }, error: (message) {
      utilServices.showToast(message: message, isError: true);
      print(message);
    });
  }
}
