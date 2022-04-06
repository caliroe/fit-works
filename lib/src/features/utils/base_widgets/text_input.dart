
import 'package:flutter/material.dart';


// class showIconLabel extends StatefulWidget {
//   const showIconLabel({ Key? key }) : super(key: key);

//   @override
//   State<showIconLabel> createState() => _showIconLabelState();
// }

// class _showIconLabelState extends State<showIconLabel> {
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () {
//         setState(() {
//             widget.obscureText = !widget.obscureText;
//         });
//       },
//       icon: Icon(
//         widget.obscureText ? Icons.visibility : Icons.visibility_off)
//       );
//   }
// }
  


Widget customTextInput({
  textLabel,
  textFieldController,
  obscureText = false,
  suffixIcon = null
})
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: TextField(
            controller: textFieldController,
            keyboardType: TextInputType.emailAddress,
            obscureText: obscureText,
            decoration: InputDecoration(
                labelText: textLabel,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 10
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 189, 189, 189))
                ),
                suffixIcon: suffixIcon
            )
          ),
        ),
      ],
    );
  }