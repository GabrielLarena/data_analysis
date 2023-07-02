import 'dart:io';
import 'package:cine_review/LoginPage.dart';
import 'package:cine_review/SigninPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  TextEditingController _senha = TextEditingController();
  TextEditingController _confirmarsenha =
  TextEditingController(); // PasswordValidation

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF131824),
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Text('Cadastro',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          )),
                      Divider(),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Nome Completo",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15)),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "O nome é obrigatório";
                          } else if (value != null && value.length > 18) {
                            return "O nome pode ter no máximo 18 caracteres";
                          }

                          return null;
                        }, // FormValidation
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Data de Nascimento",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15)),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "A data de nascimento é obrigatória";
                          } else if (value != null &&
                              !RegExp(r"(?:0[1-9]|[12][0-9]|3[01])[-/.](?:0[1-9]|1[012])[-/.](?:19\d{2}|20[01][0-9]|2020)")
                                  .hasMatch(value)) {
                            return "Insira uma data valida";
                          }

                          return null;
                        }, // FormValidation
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15)),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "O email é obrigatório";
                          } else if (value != null &&
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return "Insira um email valido";
                          }

                          return null;
                        }, // FormValidation
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: _senha,
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15)),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "A senha é obrigatória";
                          } else if (value != null && value.length < 8) {
                            return "A senha precisa ter no mínimo 9 caracteres";
                          }

                          return null;
                        }, // FormValidation ,
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _confirmarsenha,
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                            labelText: "Confirmar Senha",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15)),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Reinsira a senha";
                          } else if (_senha.text != _confirmarsenha.text) {
                            return "A confirmação de senha não confere";
                          }

                          return null;
                        }, // FormValidation ,
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 50.0,
                        width: 230.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFEC8164), Color(0xFFF14C63)],  // Set the desired gradient colors
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(25), // Adjust the border radius as needed
                        ),
                        child: ElevatedButton(
                          child: Text('Cadastrar'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              backgroundColor: Colors.transparent,
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            } // FormValidation
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                        ),
                      ),
                    ]),
              ),
            ),
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}
