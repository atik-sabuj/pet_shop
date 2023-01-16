import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Image.asset(
        "images/logo.png",
        height: 30,
        width: 30,
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adopt a Friend"),),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width  -90,
                      child: TextField(
                        textAlign: TextAlign.start,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Search...',

                          prefixIcon: Icon(Icons.search,color: Colors.red,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                              color: Colors.red
                            ),
                          ),
                          filled: true,
                          contentPadding: EdgeInsets.all(16),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.blueAccent,
                            border: Border.all(
                              width: 1,
                              color: Colors.blueAccent
                            ),

                          borderRadius: BorderRadius.circular(12),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],

                        ),
                        child: Icon(Icons.sort, color: Colors.white,size: 24,),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // <= No more error here :)
                    color: Colors.purple.withOpacity(.4),
                  ),



                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      SizedBox(
                        width: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pet Adoption made easy",style: TextStyle(fontSize: 24,color: Colors.white,height: 1.2),),

                            ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              )
                              , child: Text("Shop now",))
                          ],
                        ),
                      ),

                      Expanded(
                         child: Container(
                             child: Image.asset("images/dogs.png",fit: BoxFit.cover,)
                         ),
                      )
                    ],


                  ),
                )
              ),


            ],
          ),
        ),
      ),

    );
  }
}
