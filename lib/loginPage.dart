import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _LoginPage();
}

class _LoginPage extends State<LoginPage>{
  final formKey = new GlobalKey<FormState>();

  String email;
  String password;

  void validateAndSave(){
    final form = formKey.currentState;

    if(form.validate()){
      form.save();
      print('form is valid. E-mail: $email, Password: $password');
    }else{
      print('form not is valid. E-mail: $email, Password: $password');
    }
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Login'),
      ),
      body: new Container(
        padding: EdgeInsets.all(16.0),
        child: new Form(
          key: formKey,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: 'E-mail'),
                validator: (value) => value.isEmpty ? 'E-mail can´t be empty': null,
                onSaved: (value) => email = value,
              ),

              new TextFormField(
                decoration: new InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) => value.isEmpty ? 'Password can´t be empty': null,
                onSaved: (value) => password = value,
              ),
              new RaisedButton(
                child: new Text('Login', style: new TextStyle(fontSize: 25.0),),
                onPressed: validateAndSave,
              )
            ],
          ),
        ),
      ),
    );
  }
}