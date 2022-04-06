import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
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

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    //TODO: Validate username
    //TODO: Validate password

    try {
      final userInfo = await _usecase.login(username, password);
      if (userInfo.password == password && userInfo.username == username) {
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
