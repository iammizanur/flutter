import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textFieldController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Text Field Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Simple TextField
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        //BorderStyle style = BorderStyle.solid,
                        color: Colors.tealAccent, // Border color
                        width: 8.0, // Border width
                      ),
                  borderRadius: BorderRadius.zero
                  )

                  //labelText: 'Enter your text',
                ),
                controller: _textFieldController,
              ),
              //SizedBox(height: 20),

              // TextFormField with validation
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.tealAccent, // Border color
                      width: 8.0, // Border width
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: EdgeInsets.all(15.0),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(

                ),
                controller: _textFieldController,
              ),

              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.tealAccent,
                 focusColor: Colors.tealAccent

                ),
                controller: _textFieldController,
              ),
              SizedBox(height:50),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          //BorderStyle style = BorderStyle.solid,
                          color: Colors.tealAccent, // Border color
                          width: 8.0, // Border width
                        ),
                        borderRadius: BorderRadius.zero
                    )

                  //labelText: 'Enter your text',
                ),
                controller: _textFieldController,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
