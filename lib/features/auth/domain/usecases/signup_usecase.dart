import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

class SignUpUseCase {
  AuthRepo repo;

  SignUpUseCase(this.repo);

  Future<Either<RouteFailures,UserModel>> call(SignUpEntity signUpEntity) => repo.signUp(signUpEntity);
}
