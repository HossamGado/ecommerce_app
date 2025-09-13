import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDs authRemoteDs;
  AuthRepoImpl(this.authRemoteDs);
  @override
  Future<bool> signIn(String email, String password) {
  return authRemoteDs.signIn(email, password);
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
