import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../constants.dart';

class SingInForm extends StatelessWidget {
  SingInForm({
    Key? key, required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;
   late String  _email, _password;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextFieldName(
            text: "Email",
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Edison@prueba.com",
            ),
            validator: EmailValidator(errorText: "Debe usar un email valido"),
            onSaved: (emailAddress) => emailAddress = _email,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const TextFieldName(
            text: "Contraseña",
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "******",
            ),
            validator: passwordValidator,
            onSaved: (password) => _password = password!,
            onChanged: (pass) => _password = pass,
          ),
          const SizedBox(
            height: defaultPadding,
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
