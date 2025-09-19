import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/signup_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthLoginState> {
  LoginUseCase loginUseCase;
  SignUpUseCase signUpUseCase;

  AuthBloc(this.loginUseCase, this.signUpUseCase) : super(AuthLoginInit()) {
    on<AuthEvent>((event, emit) {});
    on<LoginEvent>((event, emit) async {
      state.copyWith(requestState: RequestState.loading);
      var data = await loginUseCase.call(event.email, event.password);
      data.fold(
        (l) {
          emit(
            state.copyWith(
              loggedIn: false,
              errorMessage: l.message,
              requestState: RequestState.failure,
            ),
          );
        },
        (r) {
          emit(state.copyWith(loggedIn: r, requestState: RequestState.success));
        },
      );
    });
    on<SignUpEvent>((event, emit) async {
      state.copyWith(requestState: RequestState.loading);
      var data = await signUpUseCase.call(event.signUpEntity);
      data.fold(
        (l) {
          emit(state.copyWith(requestState: RequestState.failure));
        },
        (r) {
          emit(state.copyWith(requestState: RequestState.success));
        },
      );
    });
  }
}
