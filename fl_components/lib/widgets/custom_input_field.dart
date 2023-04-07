import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String ? hintText;
  final String ? labelText;
  final String ? helperText;
  final String ? counterText;
  final IconData ? icon;
  final IconData ? suffixIcon;
  final TextInputType ? textInputType;
  final bool password;
  final String formProperty;
  final Map<String,String> formValues;


  const CustomInputField({
      super.key, 
      this.hintText, 
      this.labelText, 
      this.helperText, 
      this.counterText, 
      this.icon, 
      this.suffixIcon, 
      this.textInputType, this.password = false, 
      required this.formProperty, 
      required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      keyboardType: textInputType,
      obscureText: password,
      onChanged: ( value ) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null) return 'This Field is Required';
        return value.length < 3 ? 'Minum 3 characteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: counterText,
        //prefixIcon: Icon(Icons.verified_user),
        suffixIcon: suffixIcon == null ? null : Icon (suffixIcon),
        icon: icon == null ? null : Icon (icon),
      ),
    );
  }
}