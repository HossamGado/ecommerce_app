import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/exceptions/failures.dart';
import 'package:ecommerce_app/features/auth/data/data_source/reomte/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/data/models/user_model.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repository/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDs authRemoteDs;

  AuthRepoImpl(this.authRemoteDs);

  @override
  Future<Either<RouteFailures, bool>> signIn(
    String email,
    String password,
  ) async {
    try {
      bool loggedIn = await authRemoteDs.signIn(email, password);
      if (!loggedIn) {
        return Left(
          RouteInvalidCredentialFailures("invalid username or password"),
        );
      }
      return Right(loggedIn);
    } catch (e) {
      return left(RouteRemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RouteFailures,UserModel>> signUp(SignUpEntity signUpEntity)async {
    try {
      var userModel = await authRemoteDs.signUp(signUpEntity);

      return Right(userModel);
    } catch (e) {
      return left(RouteRemoteFailures(e.toString()));
    }
  }
}
