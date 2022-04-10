import 'package:flutter_modular/flutter_modular.dart';

import 'features/auth/auth_module.dart';
import 'features/home/home_module.dart';
import 'features/sign_up/sign_up_module.dart';
import 'features/pwd_recovery/pwd_recovery_module.dart';
import 'features/onboarding/onboarding_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        // ModuleRoute('/', module: OnboardingModule()),
        ModuleRoute('/', module: AuthModule()),
        ModuleRoute('/home', module: HomeModule()),
        ModuleRoute('/sign-up', module: SignUpModule()),
        ModuleRoute('/pwd-recovery', module: PasswordRecoveryModule()),
      ];
}
