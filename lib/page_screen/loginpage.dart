import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  HomePage({Key key, this.title}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      obscureText: false,
      validator: _validateEmail,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
              hintText: "Email",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
            ),
          );
          final passwordField = TextFormField(
            obscureText: true,
            validator: _validatePassword,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Password",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),
                  ),
                );
                final loginButton = Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style:
                          style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
            
                return Scaffold(
                  body: Center(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 155.0,
                              child: Image.asset(
                                "assets/logo.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(height: 45.0),
                            emailField,
                            SizedBox(height: 25.0),
                            passwordField,
                            SizedBox(
                              height: 35.0,
                            ),
                            loginButton,
                            SizedBox(
                              height: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            
              String _validatePassword(String value) {
                if(value.isEmpty)
                {
                  return ' Email Field is Empty ';
                }
                String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
      "\\@" +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
      "(" +
      "\\." +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
      ")+";
  RegExp regExp = new RegExp(p);
        if(regExp.hasMatch(p))
        {
          return null;
        }
        
        
        }
      
        String _validateEmail(String value) {
  if(value.isEmpty)
  {
    return ' password field is Empty';
  }
  if(value.length<6)
  {
    return 'Password should be greater than 6 characters';
  }
  }
}
