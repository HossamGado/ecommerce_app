import 'package:ecommerce_app/features/auth/domain/entry/sign_up_entity.dart';

abstract class AuthRemoteDs {
  Future<bool> signIn(String email, String password);

  Future<bool> signUp(SignUpEntity signUpEntity);
}
