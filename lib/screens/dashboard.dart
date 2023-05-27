
import 'package:admin/screens/entry.dart';
import 'package:admin/screens/question.dart';
import 'package:admin/screens/testRequired.dart';
import 'package:admin/screens/updatePatients.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'Appointments.dart';
import 'createPatients.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  // AuthUser _user;

  // @override
  // void initState() {
  //   super.initState();
  //   Amplify.Auth.getCurrentUser().then((user) {
  //     setState(() {
  //       _user = user;
  //     });
  //   }).catchError((error) {
  //     print((error as AuthException).message);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancer-vive'),
        centerTitle: true,
        actions: [
          MaterialButton(
            onPressed: () {
              Amplify.Auth.signOut();
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => EntryScreen()));
            },
            child: Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
      ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            height: 15,
                          ),
                          Text('Hello,',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('Co-ordinator',
                            style: TextStyle(
                                fontSize: 30
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(height: 10,),


              Padding(
                padding: const EdgeInsets.fromLTRB(17, 0, 17, 10),
                child: TextField(
                  //controller: searchController,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffEFEFEF),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                      ),
                      hintText: "Search for patients",
                      suffixIcon: IconButton( onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Search(UHID: searchController.text )));
                        // print( searchController.text);
                      }, icon: const Icon(Icons.search),),
                      prefixIconColor: Colors.black
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Profiles',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => createPatients()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 25, 10, 4),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(
                                      'assets/images/pat3.png'
                                  ),
                                ),
                              ),
                              Text('Add new Patients',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                ),)

                            ],
                          ),
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:  Colors.white,
                              boxShadow: [new BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10.0,
                              ),]
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const  EdgeInsets.fromLTRB(5, 0, 10, 0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => updatePatients()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 25, 10, 4),
                                child: CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage(
                                      'assets/images/p2.jpg'
                                  ),
                                ),
                              ),
                              Text('Update Patients',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white
                                ),)
                            ],
                          ),
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:  Colors.deepPurpleAccent.shade200,
                            // boxShadow: [new BoxShadow(
                            //   color: Color(0xff918fa5),
                            //   blurRadius: 10.0,
                            // ),]
                          ),
                        ),
                      ),
                    ),
                  )
                ],

              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Appointments',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => TodosPage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,0),
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Appointment\'s',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Image.asset('assets/images/clock.png',
                                scale: 2.1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.deepPurpleAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(2.0, 2.0), // shadow direction: bottom right
                          )
                        ],

                      ),
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Tests()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,0),
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Test\'s Required',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Image.asset('assets/images/Mtest.png',
                                scale: 4.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.deepPurpleAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(2.0, 2.0), // shadow direction: bottom right
                          )
                        ],

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Questionares()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,0,0,0),
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Text('Questionaire\'s',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Image.asset('assets/images/test.png',
                                scale: 3.5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.deepPurpleAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(2.0, 2.0), // shadow direction: bottom right
                          )
                        ],

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              )
            ],
          ),
        ),

    );
  }
}

