import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:pet_shop/view_model/categories_list.dart';
import 'package:pet_shop/view_model/features_list.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adopt a Friend"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xffFDFDFF),
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
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 90,
                        child: TextField(
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Search...',
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.red,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Colors.red),
                            ),
                            filled: true,
                            contentPadding: const EdgeInsets.all(16),
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
                            border:
                            Border.all(width: 1, color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset:
                                Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // <= No more error here :)
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
                                const Text(
                                  "Pet Adoption made easy",
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      height: 1.2),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8.0),
                                      ),
                                    ),
                                    child: const Text(
                                      "Shop now",
                                    ))
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                                child: Image.asset(
                                  "images/dogs.png",
                                  fit: BoxFit.cover,
                                )),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: SizedBox(
                          height: 140,
                          width: 170,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/pet-shop.png",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    "Shop",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        height: .2),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        //set border radius more than 50% of height and width to make circle
                      ),
                      child: SizedBox(
                          height: 140,
                          width: 170,
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "images/dog_adoption.png",
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const Text(
                                    "Adoptions",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        height: .2),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: .4),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          height: .4),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),


                showCategoryList(), //Category List like Cat,Dog,Bird and others


                const SizedBox(
                  height: 16,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Our picks for you",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          height: .4),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlue,
                          height: .4),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),


                showFeaturesList(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}