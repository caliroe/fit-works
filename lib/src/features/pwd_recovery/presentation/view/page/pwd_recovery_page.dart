import 'package:flutter/material.dart';

import '../../../../utils/base_widgets/material_button.dart';
import '../../../../utils/base_widgets/text_input.dart';


class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            "Recuperar senha", 
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                        Text(
                            "Solicite uma nova senha",
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
                            textFieldController: null,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),

                    customMaterialButton(
                      labelText: 'Enviar',
                      onPressed: (){}
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
