import 'package:dio/dio.dart';
import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';

class AuthRemoteDsImpl implements AuthRemoteDs {

  @override
  Future<bool> signIn(String email, String password) async {
    final dio = Dio();
    final response = await dio.post(
      "https://ecommerce.routemisr.com/api/v1/auth/signin",
      data: {"email": email, "password": password},
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    //call api to get or fetch data
    throw UnimplementedError();
  }
}
