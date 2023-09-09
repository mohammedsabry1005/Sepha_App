// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';

class Sephascreen extends StatefulWidget {
  Sephascreen({super.key});

  @override
  State<Sephascreen> createState() => _SephascreenState();
}

class _SephascreenState extends State<Sephascreen> {

   List<String> list_PreaiseAllah = [
      "سبحان الله",
      "الحمد لله",
      "الله أكبر",
   ];


  int counter = 0;
  int round = 0;
  int index = 0;
  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Center(child: (Text("فذكر ان نفعت الذكري"))),
        flexibleSpace: Image.asset(
          "assets/appbar.jpg",
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/IMG-20230730-WA0003.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  "${list_PreaiseAllah[index]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "$counter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 40,
                ),
                OutlinedButton(
                  onPressed: () {
                   setState(() {
                     incrementCounter();

                    });
                  },
                  style: OutlinedButton.styleFrom(
                    shape: CircleBorder(),
                    side: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(40),
                  ),
                  child: Text(
                    "اضغط",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          reset();
                        });
                      },
                      child: Text(
                        "البدء من جديد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      " رقم الدورة : $round ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void incrementCounter(){
    counter++;
    if(counter == 33){
      counter = 0;
      index++;
      if(index == 3){
        index = 0;
        round ++;
      }
    }
  }





  void reset (){
    counter = 0;
    round = 0;
    index = 0;
  }
}
