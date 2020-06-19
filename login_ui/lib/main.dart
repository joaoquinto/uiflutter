import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String assetName1 = 'images/login2.svg';
  final String title = "Bem Vindo!";
  final String userName = "Username/Email";
  final String password = "Password";
  final String forgot = "Esqueceu sua senha?";
  final String login = "LOGIN";
  final String cadastro = "Ainda não tem um cadastro? Crie uma Conta";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                child: Container(
                  height: 200,
                  child: SvgPicture.asset(assetName1),
                ),
              ),
              // Title
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 11.5, 10.0, 0.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    title,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //User
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          userName,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Form(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "xyz@example.com",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              // labeltext e forgot
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        // Serve para dar um espaçamento entre duas colunas, em uma row.
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                password,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Text("$forgot",
                                  style: TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        ],
                      ),
                    ),
                    Form(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Entre com a sua senha",
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                child: Container(
                    child: ButtonTheme(
                        minWidth: 500.0,
                        height: 50.0,
                        child: RaisedButton(
                          color: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          child: Text(
                            "$login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 3.0, 10.0, 0.0),
                child: Text(
                  cadastro,
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
