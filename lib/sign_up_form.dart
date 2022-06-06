import 'package:authentication123/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);


  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _password1Key = GlobalKey<FormFieldState>();
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  Future<void> kayitOl() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: t1.text,
        password: t2.text).then((user) {
          FirebaseFirestore.instance.collection("Users").doc(t1.text).set({"Name": t3.text, "e-Mail": t1.text});
    });

  }

  @override
  Widget build(BuildContext context) {

    String _password = 'default';

    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('E-Posta'),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: t1,
                      validator: (value) {
                        if (value== null || value.isEmpty) {
                          return 'Kayıt Olmak İçin E-Posta Adresinizi Giriniz.';
                        }
                      },
                    ),
                  ),
                  const Divider(),
                  const Text('Ad'),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: t3,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Kayıt Olmak İçin Adınızı Giriniz.';
                        }
                      },
                    ),
                  ),
                  const Divider(),
                  const Text('Soyad'),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Kayıt Olmak İçin Soyadınızı Giriniz.';
                        }
                      },
                    ),
                  ),
                  const Divider(),
                  const Text('Şifre'),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      controller: t2,
                      key: _password1Key,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Şifrenizi Belirleyin.';
                        } else {
                          _password = value;
                        }
                      },
                    ),
                  ),
                  const Divider(),
                  const Text('Şifre Tekrar'),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty && value != _password) {
                          return 'Şifrenizi Tekrar Giriniz.'; //TODO
                        }
                      },
                    ),
                  ),
                  const Divider(),
                ],
              ),
              ElevatedButton(
                  onPressed: ()  {
                    if (_formKey.currentState!.validate()) {

                      kayitOl();
                      //TODO: sent to firebase

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return (Loginpage());
                        }),
                      );


                    }
                  },
                  child: const Text('Kayıt Ol'))
            ],
          ),
        ));
  }
}
