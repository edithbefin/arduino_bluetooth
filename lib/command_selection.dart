import 'package:flutter/material.dart';

class CommandSelection extends StatefulWidget {
  CommandSelection({Key? key}) : super(key: key);

  @override
  State<CommandSelection> createState() => _CommandSelectionState();
}

bool txtcommand1 = false;
String txt1 = "";
final text1controller = TextEditingController();
String command1 = "";

bool txtcommand2 = false;
String txt2 = "";
final text2controller = TextEditingController();
String command2 = "";

bool txtcommand3 = false;
String txt3 = "";
final text3controller = TextEditingController();
String command3 = "";

bool txtcommand4 = false;
String txt4 = "";
final text4controller = TextEditingController();
String command4 = "";

bool txtcommand5 = false;
String txt5 = "";
final text5controller = TextEditingController();
String command5 = "";

bool txtcommand6 = false;
String txt6 = "";
final text6controller = TextEditingController();
String command6 = "";

bool txtcommand7 = false;
String txt7 = "";
final text7controller = TextEditingController();
String command7 = "";

bool txtcommand8 = false;
String txt8 = "";
final text8controller = TextEditingController();
String command8 = "";

bool txtcommand9 = false;
String txt9 = "";
final text9controller = TextEditingController();
String command9 = "";

bool txtcommand10 = false;
String txt10 = "";
final text10controller = TextEditingController();
String command10 = "";
@override
void dispose() {
  text1controller.dispose();
  text2controller.dispose();
  text3controller.dispose();
  text4controller.dispose();
  text4controller.dispose();
  text5controller.dispose();
  text5controller.dispose();
  text6controller.dispose();
  text7controller.dispose();
  text8controller.dispose();
  text9controller.dispose();
  text10controller.dispose();
}

class _CommandSelectionState extends State<CommandSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bluetooth Serial'),
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text("Command 1"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt1),
                enabled: txtcommand1,
                controller: text1controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand1 = true;
                        txt1 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand1 = false;
                        txt1 = text1controller.text;
                        command1 = txt1;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 2"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt2),
                enabled: txtcommand2,
                controller: text2controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand2 = true;
                        txt2 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand2 = false;
                        txt2 = text2controller.text;
                        command2 = txt2;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 3"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt3),
                enabled: txtcommand3,
                controller: text3controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand3 = true;
                        txt3 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand3 = false;
                        txt3 = text3controller.text;
                        command3 = txt3;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 4"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt4),
                enabled: txtcommand4,
                controller: text4controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand4 = true;
                        txt4 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand4 = false;
                        txt4 = text4controller.text;
                        command4 = txt4;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 5"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt5),
                enabled: txtcommand5,
                controller: text5controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand5 = true;
                        txt5 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand5 = false;
                        txt5 = text5controller.text;
                        command5 = txt5;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 6"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt6),
                enabled: txtcommand6,
                controller: text6controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand6 = true;
                        txt6 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand6 = false;
                        txt6 = text6controller.text;
                        command6 = txt6;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 7"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt7),
                enabled: txtcommand7,
                controller: text7controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand7 = true;
                        txt7 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand7 = false;
                        txt7 = text7controller.text;
                        command7 = txt7;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 8"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt8),
                enabled: txtcommand8,
                controller: text8controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand8 = true;
                        txt8 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand8 = false;
                        txt8 = text8controller.text;
                        command8 = txt8;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 9"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt9),
                enabled: txtcommand9,
                controller: text9controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand9 = true;
                        txt9 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand9 = false;
                        txt9 = text9controller.text;
                        command9 = txt9;
                      });
                    },
                  )
                ],
              ),
            ),
            ListTile(
              title: Text("Command 10"),
              subtitle: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: txt10),
                enabled: txtcommand10,
                controller: text10controller,
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    child: Text("Edit"),
                    onPressed: () {
                      setState(() {
                        txtcommand10 = true;
                        txt10 = "Enter Command";
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Text("Save"),
                    onPressed: () {
                      setState(() {
                        txtcommand10 = false;
                        txt10 = text10controller.text;
                        command10 = txt10;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
