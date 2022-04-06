import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/view/page/pwd_recovery_page.dart';


class PasswordRecoveryModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const PasswordRecoveryPage(), children: []),
      ];
}
