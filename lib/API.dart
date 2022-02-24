import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/users.dart';
import 'package:http/http.dart' as http;
class APIintegration extends StatefulWidget {
  const APIintegration({ Key? key }) : super(key: key);

  @override
  State<APIintegration> createState() => _APIintegrationState();
}

class _APIintegrationState extends State<APIintegration> {
  Users _users = Users();
  bool isLoading = true;
  void getData()async{
    var url = Uri.parse('https://www.hokybo.com/APIKEY/api/WebApi/GetAllDetails');
  final response = await http.get(url);
  var json = jsonDecode(response.body);
  _users = Users.fromJson(json);
  setState(() {
    isLoading = false;
  });
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:isLoading?Center(
        child: CircularProgressIndicator(),
      ) :ListView.builder(
        itemCount: _users.data!.length,
        itemBuilder:( context,index){
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.green[50],
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(_users.data![index].title!,
                    style: TextStyle(
                      fontSize: 20
                    ),),
                    Text(_users.data![index].body!,
                    style: TextStyle(color: Colors.blue),),
                  ],
                ),
                // Spacer(),
                // Text(_users.data![index].userId!,
                //  style: TextStyle(
                //   fontSize: 20,
                //   color: Colors.green
                // ),),
              ],
            ),
          ),
        );
      }),
    );
  }
}