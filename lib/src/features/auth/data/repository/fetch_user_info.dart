import '../../domain/model/user.dart';

Future<User> fetchUser(User user) async {
    String username = 'gabriel@iesb.edu.br';
    String password = '123';

    // bater na api e verificar usuário
    // # https://pub.dev/packages/dio  (lib de request)

    return User(username, password);
  }