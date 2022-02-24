import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword
({ Key? key }) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

    final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _newpassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              //color: Colors.orangeAccent,
            ),
            Image.asset('assets/images/hokylogo.jpg'),
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
                          hintText: 'Enter ERP Password',
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
                          hintText: 'Type new Password',
                          
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
                          hintText: 'Confirm Password',
                          
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
                      ElevatedButton.icon(onPressed: (){
                       if(_formKey.currentState!.validate())
                       {
                         //checkLogin(context);
                       }else{                   
                       }
                      },                      
                      icon: const Icon(Icons.check), 
                      label: const Text('Submit')),
                     
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}