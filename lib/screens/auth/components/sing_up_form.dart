import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class SingUpForm extends StatelessWidget {
  SingUpForm({
    Key? key, required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;
   late String _userName, _email, _password, _phoneNumber;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFieldName(
            text: "Usuario",
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "EdisonLpz",
            ),
            validator: RequiredValidator(errorText: "El usuario es requerido"),
            onSaved: (username) => _userName = username!,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Email",
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Edison@prueba.com",
            ),
            validator: EmailValidator(errorText: "Debe usar un email valido"),
            onSaved: (emailAddress) => emailAddress = _email,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Telefono",
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "+18092587825",
            ),
            validator: RequiredValidator(errorText: "El telefono es requerido"),
            onSaved: (phoneNumber) => phoneNumber = _phoneNumber,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Contraseña",
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "******",
            ),
            validator: passwordValidator,
            onSaved: (password) => _password = password!,
            onChanged: (pass) => _password = pass,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Cofirmar Contraseña",
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "******",
            ),
          // validator: (pass) => MatchValidator(errorText: "Las Contraseñas no coinciden").validateMatch(pass!, _password!),
          ),
        ],
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black54),
      ),
    );
  }
}
