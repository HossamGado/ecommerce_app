import 'package:ecommerce_app/core/api/api_manager.dart';
import 'package:ecommerce_app/core/api/end_points.dart';
import 'package:ecommerce_app/core/api/status_code.dart';
import 'package:ecommerce_app/core/cache/shared_pref.dart';
import 'package:ecommerce_app/core/exceptions/exceptions.dart';
import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';

class AuthRemoteDsImpl implements AuthRemoteDs {
  ApiManager apiManager;

  AuthRemoteDsImpl(this.apiManager);

  @override
  Future<bool> signIn(String email, String password) async {
    try {
      final response = await apiManager.postData(
        endPoints: EndPoints.signIn,
        body: {"email": email, "password": password},
      );
      if (response.statusCode == StatusCode.success) {
        print(response.data["token"]);
        await CacheHelper.setData<String>("token", response.data["token"]);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }

  @override
  Future<UserModel> signUp(SignUpEntity signUpEntity) async {
    try {
      var response = await apiManager.postData(endPoints: EndPoints.signUp,body: signUpEntity.toJson());

      UserModel userModel=UserModel.fromJson(response.data);
      return userModel;
    } catch (e) {
      throw RouteRemoteException(e.toString());
    }
  }
}
