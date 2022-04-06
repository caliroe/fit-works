import 'package:flutter/material.dart';


Widget customMaterialButton({
  labelText,
  onPressed = Null,
}) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: const Border()
        ),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: onPressed,
          color: const Color.fromARGB(255, 150, 150, 150),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
          ),
          child: Text(
            labelText,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
                )
          ),
        ),
      ),
    );
  }
