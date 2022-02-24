// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';

// ignore: camel_case_types
class screenHome extends StatelessWidget {
  const screenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Hoky'),
         actions: [
           IconButton(onPressed: (){signout(context);}, icon: const Icon(Icons.logout_rounded))
         ],
      ),
      body:  SafeArea(
        
        child: Column(            
          children:  [
            Center(
              child: ElevatedButton.icon(onPressed: (){
  
                    },
                    
                    icon: const Icon(Icons.note_add,color: Colors.cyan), 
                    label: const Text('Tasks')),
                    
              
            ),
           
            const Text('Tasks'),
             const SizedBox(
              height: 40,
            ),
            const Center(
              child: Icon(
                Icons.approval_rounded,
                color: Colors.green,
                size: 70,
              ),
              
            ),
            
            const Text('Approvals'),
             const SizedBox(
              height: 40,
            ),
            const Center(
              child: Icon(
                Icons.notifications_active_rounded,
                color: Colors.orange,
                size: 70,
              ),
              
            ),
            const Text('Notifications')
            ],
        ),
      
    ));
  }
  signout(BuildContext ctx){
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>const ScreenLogin()), (route) => false);
  }
}