import 'package:flutter/material.dart';
import '../../../../utils/utils.dart';


class CustomTextInput extends StatefulWidget {
  TextEditingController textFieldController;
  String textLabel;
  double boxWidht = 0.7;
  bool obscureText;
  bool iconLabelButton;
  int heightSeparator;

  CustomTextInput(
    this.textLabel, 
    this.obscureText,
    this.textFieldController, 
    this.iconLabelButton,
    this.heightSeparator,
    {Key? key, boxWidht}
  ) : super(key: key);

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  
  showIconLabel(){
    if (widget.iconLabelButton) {
      return IconButton(
        onPressed: () {
            setState(() {
              widget.obscureText = !widget.obscureText;
            });
        },
        icon: Icon(
          widget.obscureText ? Icons.visibility : Icons.visibility_off)
        );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          // width: CustomSizeConfig().widthPercentage(context, widget.boxWidht),
          child: TextField(
            controller: widget.textFieldController,
            keyboardType: TextInputType.emailAddress,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                labelText: widget.textLabel,
                border: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 189, 189, 189))
                ),
                
                suffixIcon: showIconLabel()
            )
          ),
        ),
        const SizedBox(height: 30,)
      ],
    );
  }
}
