import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:hayuktrip_app/const/path.dart';
import 'package:http/http.dart' as http;
import 'loginStates.dart';
// import 'package:myflutter/registration.dart';

class User {
  int? det_id;
  String? det_fname;
  String? det_lname;
  String? det_email;

  User(
      {required this.det_id,
      required this.det_fname,
      required this.det_lname,
      required this.det_email});

  factory User.fromJson(Map<String, dynamic> parsedJson) {
    return User(
        det_id: parsedJson['id'],
        det_fname: parsedJson['first_name'],
        det_lname: parsedJson['last_name'],
        det_email: parsedJson['email']);
  }

  Map<String, dynamic> toJson() => {
        'id': det_id,
        'first_name': det_fname,
        'last_name': det_lname,
        'email': det_email,
      };
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisible = true;

  final emailController = TextEditingController();
  final passwController = TextEditingController();

  Future userLogin() async {
    String email = emailController.text;
    String password = passwController.text;

    final response = await http.post(
      // 10.0.2.2, 192.168.100.44
      Uri.parse('https://api.hayuktrip.tech/login.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    // String loginStatus = jsonDecode(response.body);

    if (response.statusCode == 201) {
      print(jsonDecode(
          response.body)); // CHECKING RESPONSE CODE, WILL DELETE LATER

      List<User> myUser = (json.decode(response.body) as List)
          .map((i) => User.fromJson(i))
          .toList();

      int? pushID = myUser[0].det_id;
      String? pushFname = myUser[0].det_fname;
      String? pushLname = myUser[0].det_lname;
      String? pushEmail = myUser[0].det_email;

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => LoginSucess(
                  id: pushID!,
                  fname: pushFname!,
                  lname: pushLname!,
                  email: pushEmail!)));
    } else {
      print(response.body);

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginFail()));
    }
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            decoration: BoxDecoration(color: Color.fromRGBO(210, 222, 255, 1)
                // image: DecorationImage(
                //   image: AssetImage(Paths.one),
                //   fit: BoxFit.cover,
                // ),
                ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 30.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Paths.logo, height: 70, width: 200),
                    SizedBox(height: 30.0),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        labelText: 'Email',
                      ),
                      validator: RequiredValidator(
                          errorText: 'Field must not be empty'),
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 15.0),
                    TextFormField(
                      controller: passwController,
                      obscureText: _passwordVisible,
                      decoration: InputDecoration(
                        fillColor: Colors.white54,
                        filled: true,
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      validator: RequiredValidator(
                          errorText: 'Field must not be empty'),
                    ),
                    SizedBox(height: 40.0),
                    Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    userLogin();
                                  }
                                },
                                child: Text('LOGIN'))),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => RegistrationPage()),
                        // );
                        print('Regist button pressed');
                      },
                      child: const Text('Don\'t have an account? Create now!'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
