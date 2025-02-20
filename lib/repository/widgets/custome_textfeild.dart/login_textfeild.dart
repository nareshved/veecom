import 'package:flutter/material.dart';

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField(
      {super.key,
      required this.loginEmailController,
      required this.keyboardType,
      this.obscureTextLogin = false,
      required this.loginValidator,
      this.suffixIconLogin,
      required this.labelTextLogin});

  final TextEditingController loginEmailController;
  final TextInputType keyboardType;
  final String? Function(String?)? loginValidator;
  final bool obscureTextLogin;
  final Widget? suffixIconLogin;
  final String labelTextLogin;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      controller: loginEmailController,
      autocorrect: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      validator: loginValidator,
      obscureText: obscureTextLogin,
      decoration: InputDecoration(
          suffixIcon: suffixIconLogin,
          labelText: labelTextLogin,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
          suffixIconColor: Theme.of(context).colorScheme.primary),
    );
  }
}
