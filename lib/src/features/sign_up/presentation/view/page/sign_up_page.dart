import 'package:flutter/material.dart';

import '../../../../utils/base_widgets/material_button.dart';
import '../../../../utils/base_widgets/text_input.dart';
import '../../../../utils/base_widgets/text_with_button_redirect.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}


class _SignUpPageState extends State<SignUpPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton( 
          onPressed:() {
              Navigator.of(context).pushReplacementNamed('/');
          },
        icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black)
        ),
      ),
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
                    const SizedBox(height: 30),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text (
                          "Cadastre-se", 
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text(
                          "Crie sua conta no Fit Works!",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 142, 130, 130),
                            ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                    const SizedBox(height: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        children: [
                          customTextInput(
                            textLabel: 'Email',
                            textFieldController: emailController,
                          ),
                          const SizedBox(height: 30),
                          customTextInput(
                            textLabel: 'Senha',
                            textFieldController: passwordController,
                            obscureText: obscureText,
                            suffixIcon: hideShowIconButton()
                          ),
                          const SizedBox(height: 30),
                          customTextInput(
                            textLabel: 'Confirmar senha',
                            textFieldController: confirmPasswordController,
                            obscureText: obscureText,
                            suffixIcon: hideShowIconButton()
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    customMaterialButton(
                      labelText: 'Cadastre-se',
                      onPressed: (){
                        Navigator.of(context).pushReplacementNamed('/home/');
                      }
                    ),
                    const SizedBox(height: 20),
                    textWithButtonRedirect(
                      labelTextButton: "Login",
                      labelTextDescription: "Já possui conta?",
                      onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/');
                      }
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

