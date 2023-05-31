import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:flutter_bluetooth_serial_example/command_selection.dart';
import './DiscoveryPage.dart';
import 'package:text_to_speech/text_to_speech.dart';

class MainPage extends StatefulWidget {
  late final String command1;
  late final String command2;
  late final String command3;
  late final String command4;
  late final String command5;
  late final String command6;
  late final String command7;
  late final String command8;
  late final String command9;
  late final String command10;
  @override
  _MainPage createState() => new _MainPage();
}

class _MainPage extends State<MainPage> {
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;
  TextToSpeech tts = TextToSpeech();
  String _address = "...";
  String _name = "...";
  late String _selectedDevice;
  String printcommand = " ";

  //

  Timer? _discoverableTimeoutTimer;
  int _discoverableTimeoutSecondsLeft = 0;

  // BackgroundCollectingTask? _collectingTask;

  @override
  void initState() {
    super.initState();

    // Get current state
    FlutterBluetoothSerial.instance.state.then((state) {
      setState(() {
        _bluetoothState = state;
      });
    });

    Future.doWhile(() async {
      // Wait if adapter not enabled
      if ((await FlutterBluetoothSerial.instance.isEnabled) ?? false) {
        return false;
      }
      await Future.delayed(Duration(milliseconds: 0xDD));
      return true;
    }).then((_) {
      // Update the address field
      FlutterBluetoothSerial.instance.address.then((address) {
        setState(() {
          _address = address!;
        });
      });
    });

    FlutterBluetoothSerial.instance.name.then((name) {
      setState(() {
        _name = name!;
      });
    });

    // Listen for futher state changes
    FlutterBluetoothSerial.instance
        .onStateChanged()
        .listen((BluetoothState state) {
      setState(() {
        _bluetoothState = state;
        _discoverableTimeoutSecondsLeft = 0;
      });
    });
  }

  @override
  void dispose() {
    FlutterBluetoothSerial.instance.setPairingRequestHandler(null);
    // _collectingTask?.dispose();
    _discoverableTimeoutTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String cmd = "";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Bluetooth Serial'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Divider(),
            ListTile(title: const Text('General')),
            SwitchListTile(
              title: const Text('Enable Bluetooth'),
              value: _bluetoothState.isEnabled,
              onChanged: (bool value) {
                // Do the request and update with the true value then
                future() async {
                  // async lambda seems to not working-
                  if (value)
                    await FlutterBluetoothSerial.instance.requestEnable();
                  else
                    await FlutterBluetoothSerial.instance.requestDisable();
                }

                future().then((_) {
                  setState(() {});
                });
              },
            ),
            ListTile(
              title: const Text('Bluetooth status'),
              subtitle: Text(_bluetoothState.toString()),
              trailing: ElevatedButton(
                child: const Text('Settings'),
                onPressed: () {
                  FlutterBluetoothSerial.instance.openSettings();
                },
              ),
            ),
            ListTile(
              title: const Text('Local adapter address'),
              subtitle: Text(_address),
            ),
            ListTile(
              title: const Text('Local adapter name'),
              subtitle: Text(_name),
              onLongPress: null,
            ),
            ListTile(
              title: ElevatedButton(
                  child: const Text('Explore discovered devices'),
                  onPressed: () async {
                    final BluetoothDevice? selectedDevice =
                        await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return DiscoveryPage();
                        },
                      ),
                    );

                    if (selectedDevice != null) {
                      print('Discovery -> selected ' + selectedDevice.address);
                      setState(() {
                        _selectedDevice = selectedDevice.address;
                      });
                    } else {
                      print('Discovery -> no device selected');
                    }
                  }),
            ),
            Divider(),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () async {
                  BluetoothConnection connection =
                      await BluetoothConnection.toAddress(_selectedDevice);
                  print("Connected to" + _selectedDevice);

                  connection.input!.listen(
                    (Uint8List data) {
                      print('Data incoming: ${ascii.decode(data)}');
                      setState(() {
                        printcommand = ascii.decode(data);
                      });
                      if (printcommand == "one") {
                        tts.speak(command1);
                        cmd = command1;
                      } else if (printcommand == "two") {
                        tts.speak(command2);
                        cmd = command2;
                      } else if (printcommand == "three") {
                        tts.speak(command3);
                        cmd = command3;
                      } else if (printcommand == "four") {
                        tts.speak(command4);
                        cmd = command4;
                      }

                      connection.output.add(data);
                      if (ascii.decode(data).contains('!')) {
                        connection.finish();
                        print('Disconnecting by local host');
                      }
                    },
                  );
                },
                child: const Text("connect device"),
              );
            }),
            Divider(),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: cmd,
              ),
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CommandSelection()));
                },
                child: Text("Edit commands"))
          ],
        ),
      ),
    );
  }
}
