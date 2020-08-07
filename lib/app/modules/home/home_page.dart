import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          Container(
            padding: EdgeInsets.only(top: 50),
            child: Image.asset(
              'lib/assets/tdc.png',
              width: 300,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SUCESSO!!!!!',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                FlatButton(
                  onPressed: () async {
                    final sp = await SharedPreferences.getInstance();
                    sp.clear();
                    Modular.to.pushNamedAndRemoveUntil('/', (_) => false);
                  },
                  child: Text(
                    'SAIR',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
