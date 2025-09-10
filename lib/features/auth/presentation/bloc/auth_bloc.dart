import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/features/auth/domain/usecases/login_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthLoginState> {
  LoginUseCase loginUseCase;

  AuthBloc(this.loginUseCase) : super(AuthLoginInit()) {
    on<AuthEvent>((event, emit) {});
    on<LoginEvent>((event, emit) async {
      state.copyWith(requestState: RequestState.loading);
      bool loggedIn = await loginUseCase.call(event.email, event.password);

      if (loggedIn) {
        state.copyWith(loggedIn: true, requestState: RequestState.success);
      } else {
        state.copyWith(
          errorMessage: "Some thing went wrong",
          requestState: RequestState.failure,
        );
      }
    });
  }
}
