import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration"),

      ),
      body:
      SafeArea(
      child:
      SingleChildScrollView(

        child: Container(

          child: Column(children: [
            Container(
              height: 170,
              // Align(
              //
              //   alignment: Alignment.bottomRight,
              //   child: Container(
              //     height: 100,
              //     width: 100,
                  decoration: const BoxDecoration(

                      image: DecorationImage(
                        image: AssetImage("lib/img/edited1.png"),
                        // fit: BoxFit.cover,
                      ),
                      color: Color.fromRGBO(225, 225, 225, 1),
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))
                  ),



           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Column(

                 children:[

              Container(
                width: MediaQuery.of(context).size.width,

                child: Column(
                  children: [

                Align(
                  alignment: Alignment.bottomLeft
                  ,
                  child: Text("Create Your \n ACCOUNT",
                  style: GoogleFonts.pacifico(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 20
                  ),),
                ),
                    Align(
                      alignment: Alignment.topLeft
                      ,
                      child: Text("Account",
                        style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 20
                        ),),
                    ),

              ]
                )
              ),

             ]),
           )
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,),
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
                            labelText: 'Email',
                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 25,),


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
                            labelText: 'Password',
                          )

                      ),
                    ),
                  ),
                  SizedBox(height: 25,),

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
                        labelText: 'Re-Enter Password',
                      )

                  ),
                ),
                  ),
                  SizedBox(height: 20,),
                  TextButton(onPressed: (){}, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Register")
                    ],
                  ),
                    style: ButtonStyle(
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: Colors.blue))),
      ), ),

                  SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  }, child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      Text("Already Have an Account? Login")
                    ],
                  ),
                    style: ButtonStyle(), ),
                ],
              ),
            )
          ],),
        ),
      ),
      )
    );
  }
}
