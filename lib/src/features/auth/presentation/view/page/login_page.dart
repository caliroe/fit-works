import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../utils/base_widgets/material_button.dart';
import '../../../../utils/base_widgets/text_input.dart';
import '../../../../utils/base_widgets/text_with_button_redirect.dart';

import '../../viewmodel/login_viewmodel.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final _viewModel = Modular.get<LoginViewModel>();
  bool obscureText = true;

  hideShowIconButton(){
    return IconButton(
      onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
      },
      icon: Icon(
        obscureText ? Icons.visibility_off :  Icons.visibility)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 120),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text (
                            "Entrar", 
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Fit Works",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 142, 130, 130),
                              ),
                          ),
                        ],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          customTextInput(
                            textLabel: 'Email',
                            textFieldController: _viewModel.usernameController,
                          ),
                          const SizedBox(height: 30),
                          customTextInput(
                            textLabel: 'Senha',
                            textFieldController: _viewModel.passwordController,
                            obscureText: obscureText,
                            suffixIcon: hideShowIconButton()
                          ),
                          const SizedBox(height: 30),
                          customMaterialButton(
                            labelText: 'Entrar',
                            onPressed: () {
                              setState(() {
                                  _viewModel.username = _viewModel.usernameController.text;
                                  _viewModel.password = _viewModel.passwordController.text;
                                  _viewModel.login();
                                  if (_viewModel.isLogged) {
                                    Navigator.of(context).pushReplacementNamed('/home/');
                                  }
                              });
                            } 
                          ),
                          const SizedBox(height: 30),
                          textWithButtonRedirect(
                            labelTextButton: "Cadastre-se",
                            labelTextDescription: "Ainda não possui conta?",
                            onPressed: () {
                                Navigator.of(context).pushReplacementNamed('/sign-up/');
                            }
                          ),
                          const SizedBox(width: 10),
                          textWithButtonRedirect(
                            labelTextButton: "Esqueci minha senha",
                            onPressed: () {
                                Navigator.of(context).pushReplacementNamed('/pwd-recovery/');
                            }
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ]
           ),
          ),
        )
      )
    );
  }
}
