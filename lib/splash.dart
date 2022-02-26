
import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';

class Splash
 extends StatefulWidget {
  const Splash
  ({ Key? key }) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    gotoLogin();
    super.initState();
  }
 @override
  void didChangeDependencies() {
    // ignore: todo
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red[600],
      body:
       Center(child: Image.asset('assets/images/tiptop.png'),
      ),
    );
  }
  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
  }
  Future<void> gotoLogin() async{
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
      return const ScreenLogin();
        }
      ),
    );
  }
}
