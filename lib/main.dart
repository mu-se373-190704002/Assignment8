import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      accentColor: Colors.cyan,
    ),
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String personName, personSurname, personGender, personEmail;

  getName(name) {
    this.personName = name;
  }
  getSurname(surname) {
    this.personSurname = surname;
  }
  getGender(gender) {
    this.personGender = gender;
  }
  getEmail(email) {
    this.personEmail = email;
  }

  createData() {
    print("created");


    /* DocumentReference documentReference =
    Firestore.instance.collection("Persons").
    document(personName);

    Map<String, dynamic> persons = {
      "personName": personName,
      "personSurname": personSurname,
      "personGender": personGender,
      "personEmail": personEmail
    };
    documentReference.get().whenComplete(() => print("$personName created"));*/
  }


  readData() {
    print("read");
  }
  updateData() {
    print("updated");
  }
  deleteData() {
    print("deleted");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 8"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Name",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,
                            width: 2.0)
                    )
                ),
                onChanged: (String name) {
                  getName(name);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Surname",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,
                            width: 2.0)
                    )
                ),
                onChanged: (String surname) {
                  getSurname(surname);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Gender",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,
                            width: 2.0)
                    )
                ),
                onChanged: (String gender) {
                  getGender(gender);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue,
                            width: 2.0)
                    )
                ),
                onChanged: (String email) {
                  getEmail(email);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("Create"),
                  textColor: Colors.white,
                  onPressed: (){
                    createData();
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("Read"),
                  textColor: Colors.white,
                  onPressed: (){
                    readData();
                  },
                ),
                RaisedButton(
                  color: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("Update"),
                  textColor: Colors.white,
                  onPressed: (){
                    updateData();
                  },
                ),
                RaisedButton(
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: const Text("Delete"),
                  textColor: Colors.white,
                  onPressed: (){
                    deleteData();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
