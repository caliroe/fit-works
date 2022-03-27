import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../domain/usecase/login_usecase.dart';

part 'login_viewmodel.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  final _usecase = Modular.get<LoginUseCase>();

  // flutter pub run build_runner build

  @observable
  String username = '';

  @observable
  String password = '';
  
  @observable
  bool isLogged = false;

  void login() async {
    //TODO: Validate username
    //TODO: Validate password

    try {
      final user_info = await _usecase.login(username, password);
      if (user_info.password == password && user_info.username == username) {
        isLogged = true;
        print('Login ok!');
      } else {
        isLogged = false;
        print('Login inválido!');
      }
    } on Exception {
      print('Login inválido!');
    }
  }
}
