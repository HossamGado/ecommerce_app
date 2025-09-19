import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

class LoginUseCase {
  AuthRepo repo;

  LoginUseCase(this.repo);

  Future<Either<RouteFailures,bool>> call(String email, String password) =>
      repo.signIn(email, password);
}
