import 'package:bmiapp/screens/modifyvalues.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  static Color b = const Color(0xffCCE0FF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
           const   SizedBox(
                height: 72,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BMI",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color:const Color.fromARGB(255, 83, 121, 203),
                        shadows: [
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 5.0,
                            color: const Color.fromARGB(255, 67, 66, 66)
                                .withOpacity(0.5),
                          ),
                        ],
                      )),
                  Text(" Calculator",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 83, 121, 203),
                        shadows: [
                          Shadow(
                            offset: const Offset(3.0, 3.0),
                            blurRadius: 5.0,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ],
                      ))
                ],
              ),
            const  SizedBox(
                height: 55,
              ),
           const   Text(
                "Please choose Your Gender",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: "frist",color:  Color.fromARGB(168, 36, 35, 35)),
              ),
             const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: (){
                     Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Modifyvalues();
                      }));
                },
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                     boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 10,
        offset: const Offset(0, 3), 
      ),
    ],
                    color:const Color.fromARGB(255, 203, 227, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  SizedBox(
                          width: 5,
                        ),
                       const Text(
                          "Male",
                          style: TextStyle(
                              color: Color.fromARGB(255, 52, 72, 146),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          "assets/images/maleicon.png",
                        )
                      ],
                    ),
                  ),
                ),
              ),
             const SizedBox(
                height: 35,
              ),
              GestureDetector(
                onTap: (){
                     Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Modifyvalues();
                      }));
                },
                child: Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                     boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.2),
        spreadRadius: 5,
        blurRadius: 10,
        offset: const Offset(0, 3), 
      ),
    ],
                    color: const Color.fromARGB(255, 203, 227, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    const    SizedBox(
                          width: 5,
                        ),
                      const  Text(
                          "Female",
                          style: TextStyle(
                              color: Color(0xffCE922A),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset(
                          "assets/images/famaleicon.png",
                        )
                      ],
                    ),
                  ),
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
