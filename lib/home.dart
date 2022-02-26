// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_2/login.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';
// ignore: camel_case_types
class screenHome extends StatelessWidget {
  const screenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            UserProfileAvatar(avatarUrl: 'https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png',
            avatarSplashColor: Colors.white,
            onAvatarTap: (){
            
            },
            ),
            const Text('TipTop'),
          ],
        ),
         actions: [
           IconButton(onPressed: (){signout(context);}, icon: const Icon(Icons.logout_rounded))
         ],
      ),
      body:  SafeArea(
        
        child:Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(15), color: Colors.red.shade100,),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 150,
                                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.approval_sharp,
                          color: Colors.teal,size: 50,),
                          Text('Approvals',style: TextStyle(color: Colors.black,fontSize: 15),),
                          Text('2 New',style: TextStyle(color: Colors.red),)

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.lightGreen.shade100, borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(right: 10,bottom: 10),
                      height: 150,
                                    
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications,color: Colors.red.shade600,size: 50),
                          Text('Informations',style: TextStyle(color: Colors.black,fontSize: 15),),
                          Text('4 New',style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                  ),
                 
                ],
              ),
              Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.orange.shade100,   borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(right: 10,bottom: 10),
                  height: 150,
                              
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.task_rounded,
                      color: Colors.blue.shade800,size: 50),
                      Text('Tasks',style: TextStyle(color: Colors.black,fontSize: 15),),
                          Text('1 New',style: TextStyle(color: Colors.red),)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(              
                  margin: EdgeInsets.only(right: 10,bottom: 10),
                  height: 150,                 
                  decoration: BoxDecoration(color: Colors.blue.shade100, borderRadius: BorderRadius.circular(15)),   
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code,
                      color: Colors.black,size: 50),
                      Text('Scan QR',style: TextStyle(color: Colors.black,fontSize: 15),),
                        
                    ],
                  ),
                ),
              ),
             
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.purple.shade100, borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.only(right: 10,bottom: 10),
                  height: 150,                               
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_today,color: Colors.deepPurple,size: 50),
                      Text('Attendance',style: TextStyle(color: Colors.black,fontSize: 15),),
                       
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(              
                  margin: EdgeInsets.only(right: 10,bottom: 10),
                  height: 150, 
                  decoration: BoxDecoration(color: Colors.yellow.shade100,borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.supervised_user_circle,
                      color: Colors.brown,size: 50),
                      Text('Employee Details',style: TextStyle(color: Colors.black,fontSize: 15),),

                    ],
                  ),
                ),
              ),
             
            ],
          ),
            ],
          ),
        )
      
    ));
  }
  signout(BuildContext ctx){
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>const ScreenLogin()), (route) => false);
  }
}