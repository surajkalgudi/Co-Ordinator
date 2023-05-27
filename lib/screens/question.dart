import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Questionares extends StatefulWidget {
  const Questionares({Key? key}) : super(key: key);

  @override
  State<Questionares> createState() => _QuestionaresState();
}

class _QuestionaresState extends State<Questionares> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffB19CD7),
                          Colors.deepPurple,

                        ],
                      ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Quality of Life", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                      //SizedBox(height: 5,),
                      SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(onPressed: (){
                          launch('https://docs.google.com/forms/d/e/1FAIpQLScaiWn8XAAtv7esuAMDZLfhWgNcpSJRUxypheHrx74g55vDYQ/viewform?usp=sf_link');

                        }, child: Text("Form"),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent, //background color of button
                                //side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                //padding: EdgeInsets.all(20) //content padding inside button
                            )
                        ),
                      ),
                    ],
                  )
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffB19CD7),
                          Colors.deepPurple,

                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Eortc QLQ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                        //SizedBox(height: 5,),
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(onPressed: (){
                            launch('https://docs.google.com/forms/d/e/1FAIpQLScxDp6SJ5mJ5by3VK_AwwO9FaYM0nqgDjaKKvHhgK4_hT2TRA/viewform?usp=sf_link');

                          }, child: Text("Form"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent, //background color of button
                                //side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                //padding: EdgeInsets.all(20) //content padding inside button
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffB19CD7),
                          Colors.deepPurple,

                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Text("Eortc ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                              SizedBox(height: 5,),
                              Text("QLQ - H&N43", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                            ],
                          ),
                        ),
                        //SizedBox(height: 5,),
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(onPressed: (){
                            launch('https://forms.gle/R5mQffKQUwfQodtk9');
                          }, child: Text("Form"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent, //background color of button
                                //side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                //padding: EdgeInsets.all(20) //content padding inside button
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffB19CD7),
                          Colors.deepPurple,

                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Text("Eortc ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                              SizedBox(height: 5,),
                              Text("QLQ - BR45", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30,color: Colors.white),),
                            ],
                          ),
                        ),
                        //SizedBox(height: 5,),
                        SizedBox(
                          height: 50,
                          width: 100,
                          child: ElevatedButton(onPressed: (){
                            launch('https://forms.gle/qCps9f9bt7MTqwU17');
                          }, child: Text("Form"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent, //background color of button
                                //side: BorderSide(width:3, color:Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                //padding: EdgeInsets.all(20) //content padding inside button
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
