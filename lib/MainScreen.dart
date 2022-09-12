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
    return Scaffold(
        
        backgroundColor: Colors.black45,

        body:
        Container(

          child: Center(

            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  child: Column(
                    children: [
                      Text("Мои дела"),
                      Row(
                        children: [
                          Text("Выполнено — 5"),
                          Icon(
                            Icons.visibility
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}