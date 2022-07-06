// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

import 'massenger.dart';

void main() {
  runApp(
    MaterialApp(
      
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MyWidget(),
        '/second': (context) => Massenger(),
      },
    ),
  );
}

// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
  MyWidget({Key? key}) : super(key: key);
  var emilaContorol = TextEditingController();
  var paswordCont = TextEditingController();
  static const data = 'ahmed';
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color.fromARGB(255, 231, 243, 239),
        appBar: AppBar(
          title: const Text(data),
          backgroundColor: const Color.fromARGB(255, 0, 236, 204),
          foregroundColor: Colors.green[700],
          leading: const Icon(Icons.person),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Container(
            width: double.infinity,
            child: Column(children: [
              Expanded(
                child: const Image(
                    width: 450,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1498598457418-36ef20772bb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")),
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", border: OutlineInputBorder()),
                onChanged: (value) {
                  // print(value);
                },
                controller: emilaContorol,
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
                controller: paswordCont,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(85, 76, 175, 79),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MaterialButton(
                    onPressed: () {
                      if (emilaContorol.text == "ahmedibrahim@gmail.com" &&
                          paswordCont.text == "ahmed123") {
                        Navigator.pushNamed(context, '/second');
                      }
                    },
                    child: Text("Login",
                        style: TextStyle(fontSize: 30, color: Colors.green)),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "forget Password",
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "register",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ]),
          ),
        ),
      );
}
