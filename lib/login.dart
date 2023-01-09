import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/register.dart';
import 'package:school_app/user.dart';
import 'package:http/http.dart' as http;
import 'Product.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  User user = User("", "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight:20,
          title: Text(
            "School App Login",
            style: GoogleFonts.pacifico(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [

                Container(
                 // color: Colors.white,
                 //  shadowColor: Colors.blueGrey,
                  // height: 500,
                  // width: MediaQuery.of(context).size.width,
                  // decoration: const BoxDecoration(
                  //     color: Color.fromRGBO(225, 225, 225, 0.4),
                  //     boxShadow: [
                  //       BoxShadow(
                  //           blurRadius: 10,
                  //           color: Colors.blueAccent,
                  //           offset: Offset(1, 5))
                  //     ],
                  //     borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(50),
                  //         bottomRight: Radius.circular(20)
                  //     )
                  // ),
                  child: Column(
                    children: [
                      Container(
                        height: 290,
                        decoration: const BoxDecoration(
                            // color: Color.fromRGBO(225, 225, 225, 0.6),
                            image: DecorationImage(
                                image: AssetImage("lib/img/edited2.png"),
                              fit: BoxFit.scaleDown

                            ),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(70),
                                bottomLeft: Radius.circular(70)),

                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
                            style: GoogleFonts.pacifico(
                                fontWeight: FontWeight.normal,
                                fontSize: 50,
                                color: Colors.white),
                          ),
                        ),
                      ),

                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                borderRadius: new BorderRadius.circular(20.0),
                                  border: Border.all()
                              ),
                              child: Padding(
                                padding:
                                EdgeInsets.only(left: 10, right: 10, top: 5),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Username/Email',

                                    )

                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white70,
                               borderRadius: new BorderRadius.circular(20.0),
                               border: Border.all()
                             ),
                             child: Padding(
                               padding:
                               EdgeInsets.only(left: 10, right: 10, top: 5),
                               child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Your Password',
                                    )

                               ),
                             ),
                           ),
                          ],
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return Dashboard();
                                }));
                              },
                              child: Text(
                                "Forgot Password?",
                                style: GoogleFonts.roboto(),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                        onPressed: () {
                         // fetchProducts();

                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40.0),
                                      side: BorderSide(color: Colors.blue))),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Login"),
                            Icon(Icons.arrow_forward)
                          ],
                        )
                ),
              ),


                Container(
                  width: 250,
                  child: TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context){
                                    return Register();
                                  }));
                                },
                                  child: Center(
                                      child: Text("Don't Have an Account? Register",),
                                  ),
                            ),
                ),

            Container(
              height: 10,
              decoration: const BoxDecoration(
                // color: Color.fromRGBO(225, 225, 225, 0.6),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70)),

              ),),

                  ],
            ),
          ),
        ));
  }

  Future<http.Response> fetchProducts() async {
    String BaseUrl="http://192.168.43.87:8080/files";
    print(BaseUrl);
    Uri uri= Uri.parse(BaseUrl);
    final response = await
    http.get(uri);
    if (response.statusCode == 200) {
      print(response.body);
      return response;
      // return parseProducts(response.body);
    } else {
      print( response.statusCode);
      throw Exception('Unable to fetch products from the REST API');
    }
  }
  List<Product> parseProducts(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Product>((json) => Product.fromJson(json)).toList();
  }
}

