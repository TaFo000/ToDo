import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color color = Colors.grey;
  bool checkedValue = false;
  bool newValue = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.grey;
    }

    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    return Scaffold(
      backgroundColor: Colors.black38,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 82, 154, 6),
                    child: Text(
                      "Мои дела",
                      style: TextStyle(fontSize: 32, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 0, 24, 18),
                    child: Row(
                      children: [
                        Text(
                          "Выполнено — 5",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
                          child: Icon(
                            Icons.visibility,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: checkedValue,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkedValue = value!;
                                });
                              },
                            ),
                            title: Text("Купить что-то"),
                            trailing: Icon(Icons.info),
                          ),
                          ListTile(
                            leading: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: checkedValue,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkedValue = value!;
                                });
                              },
                            ),
                            title: Text("Купить что-то"),
                            trailing: Icon(Icons.info),
                          ),
                          ListTile(
                            leading: Checkbox(
                              checkColor: Colors.white,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: checkedValue,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkedValue = value!;
                                });
                              },
                            ),
                            title: Text("Купить что-то"),
                            trailing: Icon(Icons.info),
                          ),
                          ListTile(
                            title: Text("Новое"),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
