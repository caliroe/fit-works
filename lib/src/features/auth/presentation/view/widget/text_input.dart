import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import '../../../../utils/utils.dart';

class TextInput extends StatelessWidget {
  final labelText;
  final widthScreenOcupation;

  const TextInput({Key? key, this.labelText, this.widthScreenOcupation})
      : super(key: key);

  @observable
  final input = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width:
            CustomSizeConfig().widthPercentage(context, widthScreenOcupation),
        child: TextField(
          onChanged: (input) {
            input = input;
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              labelText: labelText, border: OutlineInputBorder()),
        ),
      ),
    );
  }
}
