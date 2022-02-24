import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/change_pass.dart';
import 'package:flutter_application_2/home.dart';
import 'package:flutter_application_2/register.dart';


class ScreenLogin extends StatefulWidget {
   const ScreenLogin
({ Key? key }) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {



final _usernameController = TextEditingController();

final _passwordController = TextEditingController();

final _formKey  = GlobalKey<FormState>();

bool _isDataMatched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:Colors.orange[50],
      body:
       SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              //color: Colors.orangeAccent,
            ),
            Container(
              
              //color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Form(
                  key: _formKey,
                  child: Column(
                    //crossAxisAlignment:  CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintText: 'Enter Employee Id',
                        ),
                        validator: (value){
                          // if (_isDataMatched)
                          // {
                          //   return null;
                          // }
                          // else{
                          //   return 'error';
                          // }
                          if(value == null || value.isEmpty){
                            return 'Value is Empty';
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintText: 'Enter Password',
                          
                        ),
                        validator: (value){
                          // if (_isDataMatched)
                          // {
                          //   return null;
                          // }
                          // else{
                          //   return 'error';
                          // }
                           if(value == null || value.isEmpty){
                            return 'Value is Empty';
                          }else{
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const ChangePassword()));
                      }, child: Text('Forgot Password')),
                      ElevatedButton.icon(onPressed: (){
                       if(_formKey.currentState!.validate())
                       {
                         checkLogin(context);
                       }else{                   
                       }
                      },                      
                      icon: const Icon(Icons.check), 
                      label: const Text('Login')),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Not have an account'),
                          TextButton(onPressed: (){
                            register();
                            Navigator.push(  
                            context,  
                            MaterialPageRoute(builder: (context) => const Register()));  
                          }, 
                          child: Text('Register Now')),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }

  void checkLogin(BuildContext ctx){
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if(_username == _password){
     // print('username  and password matched');
      //goto home
       ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 5),
          content: Text('Login Success')));
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>const screenHome()));
    }else{
      //print('Username and password does not match');

      //snackbar
      // ignore: prefer_const_declarations
      final _errormsg = _username + ' and ' +_password + ' does not match';
      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
          content: Text(_errormsg)));
      //alert dialogue
      showDialog(
        context: ctx, 
        builder: (ctx1){
        return AlertDialog(
          title: const Text('error'),
          content: Text(_errormsg),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(ctx1).pop();
            }, child: const Text('Close'))
          ],
        );
      });
      //show text
      setState(() {
        _isDataMatched = false;
      });
    }
    
  }

  void register() {
    //Navigator.of(context).push(context,MaterialPageRoute(builder: Register()))
  }
}