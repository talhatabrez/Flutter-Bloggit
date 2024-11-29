// loginPage.dart
import 'package:blogging_demo/home.dart';
import 'package:flutter/material.dart';
import 'authentication.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: LoginForm(),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget{
  const LoginForm({super.key});
  @override
  _LoginForm createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  bool _obscureText = true;

  @override
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(const Radius.circular(90)),
              ),
            ),
            validator: (value) {
              if(value!.isEmpty){
                return 'Enter your email correctly';
              }
              return null;
            },
            onSaved: (val) {
              email = val;
            },
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(const Radius.circular(90)),
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            obscureText: _obscureText,
            onSaved: (val){
              password = val;
            },
            validator: (value){
              if(value!.isEmpty){
                return 'Enter your password';
              }
              return null;
            },
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 54,
            width: 184,
            child: ElevatedButton(
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  _formKey.currentState!.save();
                  AuthenticationHelper()
                    .signIn(email: email!, password: password!)
                    .then((result) {
                      if(result == null){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(
                          'Here is the error', 
                          style: TextStyle(fontSize: 16),
                        )));
                      } else {
                        Navigator.pushReplacement(context, 
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                      }
                    });
                }
              }, 
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(24.0)),
                )
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24),
              ),
            ),
          )
        ],
      ),
    );
  }
}