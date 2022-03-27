import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../viewmodel/login_viewmodel.dart';
import '../../../../utils/utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _viewModel = Modular.get<LoginViewModel>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Login')),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blueGrey[50],
          child: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: SizedBox(
                        width: CustomSizeConfig().widthPercentage(context, 0.7),
                        child: TextField(
                          onChanged: (input) {
                            email = input;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Email', border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      child: SizedBox(
                        width: CustomSizeConfig().widthPercentage(context, 0.7),
                        child: TextField(
                          onChanged: (input) {
                            password = input;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              labelText: 'Senha', border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    SizedBox(
                        width: CustomSizeConfig().widthPercentage(context, 0.7),
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            _viewModel.username = email;
                            _viewModel.password = password;
                            _viewModel.login();
                            if (_viewModel.isLogged) {
                              print('login ok');
                              Navigator.of(context)
                                  .pushReplacementNamed('/home/');
                            }
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 37, 161, 243),
                              padding: EdgeInsets.all(0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
