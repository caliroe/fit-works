import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';
import 'fetch_user_info.dart';


class LoginRepository implements ILogin {
  
  @override
  Future<User> login(User user) {
    return fetchUser(user);
  }
}
