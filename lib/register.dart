import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {


  final _usernameController = TextEditingController();
  final _empcodeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _cnfrmpassController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isdataMatched= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              //color: Colors.orangeAccent,
            ),
            Image.asset('assets/images/tiptop.png'),
            Container(
             // decoration: BoxDecoration( borderRadius: BorderRadius.circular(30)),
              //color: Colors.orange[50],
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    //crossAxisAlignment:  CrossAxisAlignment.end,
                    children: [
                      TextFormField(
                        controller: _usernameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          hintText: 'Enter User Name',
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
                        controller: _empcodeController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          hintText: 'Enter Employee Code',
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
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          hintText: 'Create Password',
                          
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
                        controller: _cnfrmpassController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
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
                      GFButton(onPressed: (){
                       if(_formKey.currentState!.validate())
                        {
                         checkLogin(context);
                       }else{                   
                       }
                      }, 
                      color: Colors.red,
                      textColor: Colors.white,
                      shape: GFButtonShape.standard,
                      blockButton: true,                          
                      icon: const Icon(Icons.check,
                      color: Colors.white,), 
                      child: const Text('Register',
                      style: TextStyle(fontSize: 20,),)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?'),
                    TextButton(onPressed: (){}, child: Text('Login')),
                  ],
                ),
              ),
            )           
          ],  
                 
        ),
        
      )
    );
  }
  void checkLogin(BuildContext ctx){
    final _username = _usernameController.text;
    final _empcode = _empcodeController.text;
    final _password = _passwordController.text;
    final _cnfmpass = _cnfrmpassController.text;
    if(_password== _cnfmpass)
    {
       ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.all(10),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 5),
          content: Text('_errormsg')));
    }
  }
}