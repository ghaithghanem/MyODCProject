import 'package:flutter/material.dart';
import 'package:myodc/views/home/welcome_screen.dart';

import 'onboarding1.dart';



class Login2Screen extends StatefulWidget {
  final Function(bool) onSwipeEnabled;

  const Login2Screen({Key? key, required this.onSwipeEnabled}) : super(key: key);

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  final _formKey = GlobalKey<FormState>();
  late String? _email;
  late String? _password;
  bool _emailError = false;
  bool _passwordError = false;
  bool canSwipe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onHorizontalDragUpdate: (details) {
          if (details.primaryDelta! > 0 && canSwipe) {
            // Swiping right
            widget.onSwipeEnabled(true);
          } else if (details.primaryDelta! < 0) {
            // Swiping left

          }
        },
    child: Expanded(
    child: SingleChildScrollView(
    child: Container(
    constraints: BoxConstraints(
    minHeight: MediaQuery.of(context).size.height,
    ),
    padding: EdgeInsets.only(bottom: 20),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
                  Container(
                    margin: EdgeInsets.only(top: 186, left: 72),
                    width: 232,
                    height: 62,
                    child: Image.asset('assets/images/spalsh.png'),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    width: 335,
                    height: 105,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: _emailError ? Colors.red : Color(0xFF000000).withOpacity(0.1),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Container(
                      height: 60, // Adjust the height as needed
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter your email",
                              contentPadding: EdgeInsets.only(left: 16),
                              errorText: _emailError ? "Invalid email address" : null,
                              errorStyle: TextStyle(color: Colors.red),
                              suffixIcon: _emailError
                                  ? Icon(
                                Icons.warning,
                                color: Colors.red,
                              )
                                  : null,
                            ),
                            validator: (value) {
                              String pattern =
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                              if (value == null || value.isEmpty) {
                                setState(() {
                                  _emailError = true;
                                });
                                return "email adres musn't be empty";
                              } else if (!RegExp(pattern).hasMatch(value)) {
                                setState(() {
                                  _emailError = true;
                                });
                                return "incorrect adress email";
                              }
                              setState(() {
                                _emailError = false;
                              });
                              return null;
                            },
                            onSaved: (value) {
                              _email = value;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20, left: 40),
                    width: 335,
                    height: 105,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: _passwordError ? Colors.red : Color(0xFF000000).withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        TextFormField(
                          obscureText: true, // Use this to obscure the password
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your password",
                            contentPadding: EdgeInsets.only(left: 16),
                            errorText: _passwordError ? "Invalid email address" : null,
                            errorStyle: TextStyle(color: Colors.red),
                            suffixIcon: _passwordError
                                ? Icon(
                              Icons.warning,
                              color: Colors.red,
                            )
                                : null,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              setState(() {
                                _passwordError = true;
                              });
                              return "password musn't be empty";
                            } else if (value.length < 5) {
                              setState(() {
                                _passwordError = true;
                              });
                              return "password musn't be inder 5 carracter";
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _password = value;
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40, left: 23),
                        width: 15,
                        height: 12,
                        color: Colors.white,
                      ),
                      SizedBox(width: 6),
                      Text(
                        "Remember me?",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 20),
                        width: 99,
                        height: 16,
                        child: Text(
                          "Forgot account?",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.28,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                      width: 335,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Validate the form
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Validation successful!'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                            // If validation is successful, navigate to the next screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFF16E00),
                          shadowColor: Color(0xFF000000).withOpacity(0.1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                    width: 335,
                    height: 40,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.28,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.28,
                            color: Color(0xFFFF7900),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    ),
    ),
      )

    ),
      )
    );
  }
}