import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class DataFromHttpApi extends StatefulWidget {
  const DataFromHttpApi({Key key}) : super(key: key);

  @override
  _DataFromHttpApiState createState() => _DataFromHttpApiState();
}

class _DataFromHttpApiState extends State<DataFromHttpApi> {
 Future getUserData()async{
    var response=await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData=jsonDecode(response.body);
    List <User> users=[];
    for(var u in jsonData){
      User user= User(u["name"],u["email"],u["userName"],u["street"]);
      users.add(user);
    }
    print (users.length);
    return users;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Get Data By Http Request"),
      ),
      body: Container(
        child:  Card(
          child: FutureBuilder(
            future: getUserData(),
            builder: (context,snapshot){
              if(snapshot.data==null){
                Container(
                  child: Center(child: Text("Loading......!")),
                );
              }else
                return ListView.builder(
                  itemCount: snapshot.data.length,
                    itemBuilder: (context,index){
                    return ListTile(
                      title: Column(
                        children: [
                          Text(snapshot.data[index].name),
                          Text(snapshot.data[index].email),
                          Text(snapshot.data[index].street),
                          // Text(snapshot.data[index].userName),

                        ],
                      ),
                    );

                });
            },
          ),
        ),
      ),
    );
  }
}
class User{
  final String name,email,userName,street;

  User(this.name, this.email, this.userName,this.street);
}
