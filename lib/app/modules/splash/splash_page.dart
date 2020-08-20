import 'package:flutter/material.dart';
import 'package:flutter_a_triade/app/shared/cubit/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => Modular.get<AuthCubit>()..checkUserLogged(),
        child: SplashContentPage(),
      ),
    );
  }
}

class SplashContentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authenticated: () => Modular.to.pushNamedAndRemoveUntil('/home', (_) => false),
          unauthenticated: () => Modular.to.pushNamedAndRemoveUntil('/login', (_) => false),
        );
      },
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            Image.asset(
              'lib/assets/tdc_fundo.jpeg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(color: Colors.black54),
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Image.asset(
                'lib/assets/tdc.png',
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
