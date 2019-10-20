import 'package:flutter/material.dart';

class LoginHandler extends InheritedWidget {
  final Widget child;

  static final _formKey = GlobalKey<FormState>();
  static final _emailController = TextEditingController();
  static final _passwordController = TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  const LoginHandler({this.child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static LoginHandler of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(LoginHandler) as LoginHandler);
}
