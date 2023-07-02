import 'dart:io';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/cine_review_logo.png'),
                                fit: BoxFit.cover,)),
                      ),
                      SizedBox(height: 20),
                      Text('Login',
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          )),
                      Divider(),
                      Container(decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                            style: BorderStyle.solid,
                          ),
                            borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff4E596F)),
                        child: TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20)),
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                Container(decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff4E596F)),
                      child:TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20)),
                      ),),
//                      adicionar esqueceu senha
//                      SizedBox(
//                        height: 30,
//                      ),
//                      new GestureDetector(
//                        onTap: () {
//                          Navigator.push(
//                              context,
//                              MaterialPageRoute(
//                                  builder: (context) => ForgotPassword()));
//                        },
//                        child: Text("Esqueceu a senha?",
//                            style: const TextStyle(color: Color(0xff29af6f))),
//                      ),
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
                          child: Text('Entrar'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              backgroundColor: Colors.transparent,
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                            //adicionar pagina
                            //Navigator.push(
                                //context,
                                //MaterialPageRoute(
                                    //builder: (context) => FeedPage()));
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                          child: Text('Cadastre-se'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: Color(0xff4E596F),
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold)),
                          onPressed: () {
                           //adicionar pagina
                            //Navigator.push(
                                //context,
                               // MaterialPageRoute(
                                   // builder: (context) => FeedPage()));
                          },
                        ),
                      )
                    ])),
          ),
          padding: EdgeInsets.all(50),
        ));
  }
}