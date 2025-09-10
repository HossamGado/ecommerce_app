import 'package:ecommerce_app/features/auth/domain/entry/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  @override
  Future<bool> signIn(String email, String password) {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<bool> signUp(SignUpEntity signUpEntity) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
