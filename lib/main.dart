import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Login(),
));

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar (
        title: Text('AAiT stack overflow'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body:Column (
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Container( 
        margin: EdgeInsets.symmetric(horizontal:30.0, vertical:30.0),
          child: Text(
            'Welcome to our Log in Page!',
            style: TextStyle(
              color: Colors.cyan,
              fontSize:30.0,
              fontWeight: FontWeight.bold,
            )
            ),
          ),
          Container( 
        margin: EdgeInsets.symmetric(horizontal:30.0, vertical:15.0),
          child: TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "User Name",
                      labelStyle: TextStyle( color: Colors.black,),   
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
          ),
          Container( 
        margin: EdgeInsets.symmetric(horizontal:30.0, vertical:15.0),
          child:TextField(
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                      labelStyle: TextStyle( color: Colors.black,),   
                      prefixIcon: Icon(Icons.security),
                      border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
          ),
            RaisedButton(
              onPressed: () {
                print("you logged in!");
              },
              color: Colors.cyan,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text("Log in"),
            ),
                 ],
      ),  
    );
  } 
}















