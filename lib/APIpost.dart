import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/users.dart';
import 'package:http/http.dart' as http;

import 'models/dataModel.dart';

class APIpost extends StatefulWidget {
  const APIpost({ Key? key,required this.title }) : super(key: key);
final String title;
  @override
  State<APIpost> createState() => _APIpostState();
}
Future<DataModel?> submitData(String name,String job)async{
  print('hi');
  var response = await http.post(Uri.https('reqres.in', 'api/users'), body: {
    "name" :name, 'job':job
  });
  var data = response.body;
  print(data);

  if(response.statusCode==201){
    String responseString = response.body;
    dataModelFromJson(responseString);
  }else {
    return null;
  }
}

class _APIpostState extends State<APIpost> {
  late DataModel _dataModel;
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    TextEditingController _jobController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type something Here'
                ),
              ),
               
            ),
            SizedBox(height: 30,),
            TextField(
                controller: _jobController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Job Here'
                ),
              ), 
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(onPressed: ()async{
                String name = _nameController.text;
                String job = _jobController.text;

                DataModel? data = await submitData(name, job);

                setState(() {
                  _dataModel = data!;
                });
              }, child: Text('Send Data')),
            )
          ],
        ),       
      ),
    );
  }
}