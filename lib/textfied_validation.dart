import 'package:flutter/material.dart';

class ValidatiionField extends StatefulWidget {
  const ValidatiionField({Key key}) : super(key: key);

  @override
  _ValidatiionFieldState createState() => _ValidatiionFieldState();
}

class _ValidatiionFieldState extends State<ValidatiionField> {
  TextEditingController _nameCont=TextEditingController();
  FocusNode _nameFocus=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameCont,
              focusNode: _nameFocus,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Name",
                fillColor: Colors.white

              ),
            ),

              ElevatedButton(onPressed: (){
                if(_nameCont.text.isEmpty)
                  failedSnackBar(context,msg: "field can not be empty");
                _nameFocus.requestFocus();
              },
                  child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}

successSnackBar(BuildContext context, {String msg}) {
  final snackBar = SnackBar(
    content: Text(
      "$msg",
      style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width * 0.04),
    ),
    backgroundColor: Colors.green[700],
    duration: Duration(milliseconds: 1150),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

failedSnackBar(BuildContext context, {String msg}) {
  final snackBar = SnackBar(
    content: Text(
      "$msg",
      style: TextStyle(
          color: Colors.white,
          fontSize: MediaQuery.of(context).size.width * 0.04),
    ),
    backgroundColor: Colors.red[700],
    duration: Duration(milliseconds: 1150),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

