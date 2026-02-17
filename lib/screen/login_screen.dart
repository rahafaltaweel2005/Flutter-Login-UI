import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  String name ='';
  String pass ='';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        leading: Icon(Icons.person),
        title: const Text("Login page"),
        actions: [Icon(Icons.language), Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: height * 0.3,
              width: width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("UserName"),
                      SizedBox(width: width * 0.02),
                      SizedBox(
                        height: height * 0.05,
                        width: width * 0.6,
                        child: TextField(
                            onSubmitted: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter your userName',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Password"),
                      SizedBox(width: width * 0.02),
                      SizedBox(
                        height: height * 0.05,
                        width: width * 0.6,
                        child: TextField(
                            onSubmitted: (value) {
                              setState(() {
                                pass = value;
                              });
                            },
                            decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Enter your password',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
            Container(
              height: height * 0.3,
              width: width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.white70,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hi ${name}"),
                      SizedBox(width: width * 0.02),
                    ],
                  ),
                  SizedBox(height: height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("your Password is ${pass}"),
                      SizedBox(width: width * 0.02),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
