import 'package:flutter/material.dart';
import 'package:apiimplementation/get_api_by_dio/model_class/get_auth.dart';
import 'package:apiimplementation/get_api_by_dio/model_service/get_auth_service.dart';


class DioApiCalling extends StatefulWidget {
  @override
  _DioApiCallingState createState() => _DioApiCallingState();
}

class _DioApiCallingState extends State<DioApiCalling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Task",style: Theme.of(context).textTheme.bodyText2,),
      ),
      body: Column(
        children: [
          Expanded(
            // ignore: missing_required_param
              child: FutureBuilder<List<Data>>(
                future: ModelApiServices().fetchDataArticle(),
                builder: (context,snapshot){
                  if(snapshot.hasData){
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context,index){
                        return ListTile(
                          title: Column(
                            children: [
                              Text(snapshot.data[index].email),
                              Text(snapshot.data[index].firstname),
                            ],
                          ),
                          // subtitle: Text(snapshot.data[index].userName),

                          // trailing: Text(snapshot.data[index].firstname),
                          // trailing: Column(
                          //   children: [
                          //     Text(snapshot.data[index].firstname),
                          //     Text(snapshot.data[index].lastname),
                          //   ],
                          // ),
                        );
                      },
                    );
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
              )
          )
        ],
      ),
    );
  }
}
