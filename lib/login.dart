import 'package:flutter/material.dart';
import 'package:authentication123/services/auth1.dart';

import 'grv.dart';
import 'sign_up.dart';

// ignore: use_key_in_widget_constructors
class aLoginpage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          Container(
            /* padding: EdgeInsets.only(
              top: 50,
            ),*/
            alignment: Alignment.center,
            height: 200,
            child: Text(
              "BUBBLE".toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF455282),
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Poppins'),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Color(0XFF5B6999),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    TextButton(
                      child: const Text(
                        "Sıgn Up",
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                child: Container(
                  //beyaz, içeriği barındıran container//
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Tekrar Hoş Geldiniz",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF000000),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Sign in with your account",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontStyle: FontStyle.normal,
                            color: Color(0X41000000),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "E-Mail",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Color(0X41000000),
                          ),
                        ),
                        TextField(
                          controller: _emailController,
                          obscureText: false,
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Color(0X41000000),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          ),
                        ), //Kullanıcı E-Mail Alanı
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "Şifre",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            color: Color(0X41000000),
                          ),
                        ),
                        TextField(
                            controller: _passController,
                            obscureText: true,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              color: Color(0X41000000),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 15, 20, 15),
                            )),
                        //Şifre Alanı

                        const SizedBox(
                          height: 50,
                        ),
                        Material(
                          color: const Color(0xFF5B6999),
                          borderRadius: BorderRadius.circular(20.0),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                            onPressed: () {
                              _authService
                                  .signIn(_emailController.text,
                                      _passController.text)
                                  .then(
                                (value) {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return (const AliskanlikWidget());
                                    }),
                                  );
                                },
                              );
                            },
                            child: const Text(
                              "Giriş Yap",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ), //Giriş Yap butonu
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Hesabın Yok Mu?',
                              style: TextStyle(
                                color: Color(0X43000000),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return (const SignUpPage());
                                  }),
                                );
                              },
                              child: const Text('Kayıt Ol'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
