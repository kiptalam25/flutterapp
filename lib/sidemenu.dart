import 'package:flutter/material.dart';
import 'package:school_app/administrator.dart';
import 'package:school_app/pages/admissions.dart';
import 'package:school_app/pages/exams.dart';
import 'package:school_app/pages/finace.dart';
import 'package:school_app/pages/marks.dart';
import 'package:school_app/pages/mysubjects.dart';
import 'package:school_app/pages/reports.dart';
import 'package:school_app/pages/subjects.dart';
import 'package:school_app/pages/users.dart';

import 'dashboard.dart';

class MySideMenu extends StatelessWidget {
  const MySideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

        child: ListView(
          padding: EdgeInsets.zero,
          children:[
          UserAccountsDrawerHeader(
            accountName: Text("Kiptalam Joseph"),
            accountEmail: Text("kiptalamjoseph@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network("https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png"
                ,width: 90,
                height: 90,
                fit: BoxFit.cover,),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg",
                ),
                fit: BoxFit.cover

              )
            ),
          ),
            ListTile(
              leading: Icon(Icons.window),
              title: Text('Dashboard'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Dashboard();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text('My Subjects'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MySubjects();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Users'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Users();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Administration'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Administration();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.add_business),
              title: Text('Admissions'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Admissions();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Subjects'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Subjects();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text('Exams'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Exams();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Marks'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Marks();
                }));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text('Reports'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Reports();
                }));
              },
            ),
            Text("Finance"),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Finance'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Finance();
                }));
              },
            ),
        ],
    ),
        );
  }
}
