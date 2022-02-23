import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Lesson extends StatefulWidget {
  const Lesson({Key? key}) : super(key: key);
  static const String id = 'lesson';

  @override
  _LessonState createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  void fireToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  void fireToast2(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green.shade900,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green.shade900,

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade900,
              Colors.green,
              Colors.green.shade900,
            ],
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            /// Register
            Container(
              height: 180,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  /// Register TEXT
                  Text('Register', style: TextStyle(color: Colors.white, fontSize: 32.5)),
                  SizedBox(height: 5.5),

                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        /// Text Fields
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25),
                          height: 190,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    blurRadius: 20,
                                    spreadRadius: 10,
                                    offset: const Offset(0, 10)
                                ),
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              /// EMAIL
                              TextField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: OutlineInputBorder(),
                                    labelText: 'EmployID',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                              ),

                              /// PASSWORD
                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: OutlineInputBorder(),
                                    labelText: 'Password',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                              ),

                              TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                    border: OutlineInputBorder(),
                                    labelText: 'Confirm Password',
                                    isCollapsed: false,
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 35),
                        /// REGISTER BUTTON
                        MaterialButton(
                          onPressed: (){

                          },
                          height: 45,
                          minWidth: 240,

                          child: const Text('Register', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          textColor: Colors.white,
                          color: Colors.green.shade700,

                          shape: const StadiumBorder(),
                        ),
                        const SizedBox(height: 25),


                        /// Rich Text & Toast
                        Padding(
                          padding: const EdgeInsets.only( bottom: 5, right: 30, left: 30),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'By registering you  agree with our',
                              style:  const TextStyle(fontSize: 14, color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(text: ' Terms & Conditions ',
                                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
                                    recognizer: TapGestureRecognizer()..onTap = (){
                                      print('Hash tag #tag');
                                      fireToast2("patti pani edukuka");
                                    }
                                ),
                                const TextSpan(text: ' and '),
                                TextSpan(
                                    text: 'Privacy Policy',
                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.cyan),
                                    recognizer: TapGestureRecognizer()..onTap = (){
                                      print('Hash tag #tag');
                                      fireToast2("");
                                    }
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}