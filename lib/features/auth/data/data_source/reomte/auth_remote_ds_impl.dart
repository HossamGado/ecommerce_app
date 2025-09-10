import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entry/sign_up_entity.dart';

class AuthRemoteDsImpl implements AuthRemoteDs{
  @override
  Future<bool> signIn(String email, String password) {
    //call api to get or fetch data
    throw UnimplementedError();
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    //call api to get or fetch data
    throw UnimplementedError();
  }
}

