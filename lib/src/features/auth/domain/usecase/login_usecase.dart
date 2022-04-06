import 'package:flutter_modular/flutter_modular.dart';

import '../model/user.dart';
import '../repository/login_interface.dart';

class LoginUseCase {
  final repository = Modular.get<ILogin>();

  Future<User> login(String username, String password) async {
    
    User requestedUser = await repository.login(User(username, password));

    if (username == requestedUser.username &&
        password == requestedUser.password) {
      print('User ok');
    } else {
      print('User fail');
    }

    return requestedUser;
  }
}
