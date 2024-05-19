import 'package:flutter_bloc/flutter_bloc.dart';

import 'states.dart';

class LoginCubit extends Cubit<Loginstate> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  bool isPass = true;
  void changePassVisibiltyState() {
    isPass = !isPass;
    emit(LoginchangePassVisibiltyState());
  }
}
