import 'package:flutter/material.dart';

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
          LoginPageContent(),
        ],
      ),
    );
  }
}

class LoginPageContent extends StatelessWidget {
  final TextEditingController loginEditController = TextEditingController();
  final TextEditingController passwordEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              child: TextFormField(
                obscureText: false,
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
                    onPressed: () {},
                    icon: Icon(false ? Icons.lock : Icons.lock_open),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: 50,
              child: RaisedButton(
                child: Text('Entrar'),
                onPressed: () {},
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
    );
  }
}
