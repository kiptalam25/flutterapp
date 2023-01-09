import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/sidemenu.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MySideMenu() ,
      appBar: AppBar(title: Text("Dashboard"),
        actions: [IconButton(onPressed: (){},
            icon: Icon(Icons.file_download))],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 600,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,

                      height: 80,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(15, 225, 225, 1),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.black,
                                offset: Offset(1, 5))
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(

                        children: const [
                          Text("Total Students: ",),
                          Text("900")
                        ],
                      ),
                    ),
                    const SizedBox(height: 40,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,

                      child: Card(

                        child: Column(

                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget> [
                                    Image.asset("lib/img/edited1.png",height: 70,width: 70,),
                                    Expanded(
                                      child:  Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                        Text("daadfdfhtjtghs r gr gr trg rg rg  rgrgrg rg g r grg rta"),
                                          Text("data"),
                                          Text("data"),
                                        Text("data")
                                      ],),
                                    ),
                                  ],
                                ),
                            Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                // Image.asset("lib/img/edited1.png",height: 70,width: 70,),
                                // Image.network("https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
                                //   width: MediaQuery.of(context).size.width,),
                                Expanded(child: Row( children:[
                                TextButton(onPressed: (){}, child: Icon(Icons.star)),
                                TextButton(onPressed: (){}, child: Icon(Icons.star)),
                                TextButton(onPressed: (){}, child: Icon(Icons.star,color: Colors.yellow,)),
                                TextButton(onPressed: (){}, child: Icon(Icons.star))
                                  ]))
                              ],
                            )
                          ],

                        ),
                      ),

                      ),


                  ],
                ),
              ),
              SizedBox(height: 40),
              Text("View More",style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold
              ),),

            ],

          ),

        ),

      ),

    );
  }
}



