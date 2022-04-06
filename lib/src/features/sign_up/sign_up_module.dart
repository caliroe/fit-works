import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/view/page/sign_up_page.dart';


class SignUpModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => SignUpPage(), children: []),
      ];
}
