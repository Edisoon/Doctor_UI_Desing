import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color(0xFF255ED6);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);

const defaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.1),
  ),
);




const emailError = 'Enter a valid email address';
const requiredField = "This field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'La contraseña es requirida'),
    MinLengthValidator(8, errorText: 'La contrasña de de contener al menos 8 caracteres'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'La contraseña debe de tener al menos un caracter especial'), 
    // MatchValidator(errorText: "Las contraseñas deben coincidir")
  ],
);


