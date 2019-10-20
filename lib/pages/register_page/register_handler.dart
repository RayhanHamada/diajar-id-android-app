import 'package:flutter/material.dart';

class RegisterHandler extends InheritedWidget {
  final Widget child;
  static final _formKey = GlobalKey<FormState>();
  static final _fullnameController = TextEditingController();
  static final _emailController = TextEditingController();
  static final _passwordController = TextEditingController();
  static final _passwordValController = TextEditingController();

  TextEditingController get fullnameController => _fullnameController;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;
  TextEditingController get passwordValController => _passwordValController;

  GlobalKey<FormState> get formKey => _formKey;

  const RegisterHandler({this.child}) : super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static RegisterHandler of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(RegisterHandler)
          as RegisterHandler);
}
