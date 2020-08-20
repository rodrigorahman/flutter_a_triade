import 'package:flutter/material.dart';
import 'package:flutter_a_triade/app/shared/loader.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'cubit/login_cubit.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Image.asset(
            'lib/assets/tdc_fundo.jpeg',
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black54),
          BlocProvider(
            create: (context) => Modular.get<LoginCubit>(),
            child: LoginPageContent(),
          ),
        ],
      ),
    );
  }
}

class LoginPageContent extends StatelessWidget {
  final ValueNotifier<bool> obscurePassword = ValueNotifier(true);
  final TextEditingController loginEditController = TextEditingController();
  final TextEditingController passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.loading) {
          Loader.showLoader(context);
        } else {
          Loader.hideLoader(context);
        }
      },
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * .9,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset(
                  'lib/assets/tdc.png',
                  width: 300,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: loginEditController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.white60,
                    filled: true,
                    hintText: 'Login',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ValueListenableBuilder<bool>(
                    valueListenable: obscurePassword,
                    builder: (_, bool obscureTextValue, __) {
                      return TextFormField(
                        obscureText: obscureTextValue,
                        controller: passwordEditController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(),
                          fillColor: Colors.white60,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => obscurePassword.value = !obscureTextValue,
                            icon: Icon(obscureTextValue ? Icons.lock : Icons.lock_open),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * .9,
                height: 50,
                child: RaisedButton(
                  child: Text('Entrar'),
                  onPressed: () => context.bloc<LoginCubit>().login(loginEditController.text, passwordEditController.text),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: FlutterLogo(
                  size: 120,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
