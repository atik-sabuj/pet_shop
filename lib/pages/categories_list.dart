
import 'package:flutter/material.dart';
import 'package:pet_shop/model/category.dart';

showCategoryList() {
  return SizedBox(
    height: 70,
    child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        itemCount: categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // <= No more error here :)
                  color: Colors.purple.withOpacity(.4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            categoryList[index].image.toString(),
                            height: 30.0,
                            width: 30.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8,),
                    Text(categoryList[index].name.toString()),
                  ],
                )
            ),
          );
        }
    ),
  );
}