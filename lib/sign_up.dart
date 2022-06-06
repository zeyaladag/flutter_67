import 'package:flutter/material.dart';
import 'main.dart';
import 'package:authentication123/sign_up_form.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: const TextStyle(
              fontSize: 32.0, fontWeight: FontWeight.bold), //TODO: Font Family
          title: const Text(
            'BUBBLE',
            style: TextStyle(color: Color.fromRGBO(69, 82, 130, 1)),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(
                height: 80.0,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(69, 82, 130, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Giriş Yap',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    TextButton(
                      onPressed: null,
                      child: Text('Kayıt Ol',
                          style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
              const Divider(),
              const Text(
                'Kayıt Ol!',
                style: TextStyle(
                    color: Color.fromRGBO(69, 82, 130, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0),
              ),
              const SignUpForm(),
              const Text('Zaten bir hesabın var mı?'),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return (Loginpage());
                      }),
                    );

              },

                   child: const Text('Giriş Yap'))
            ],
          ),
        ));
  }
}
