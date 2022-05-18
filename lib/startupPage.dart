import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, ButtonStyle, Center, Colors, Container, ElevatedButton, Icons, MaterialApp, MaterialStateProperty, Scaffold, State, StatefulWidget, Widget;


class FoodSpot extends StatefulWidget{
  @override
  State<FoodSpot> createState() => _FoodSpotState();
}

class _FoodSpotState extends State<FoodSpot> {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(image: AssetImage('lib/images/foodspot.png')),
              const SizedBox(height: 150.0),
              SizedBox(
                width: 150.0,
                height: 30.0,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Color(0x00ed348d))
                          )
                      )
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(Icons.restaurant_menu, size: 18),
                  label: const Text("Signup"),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 150.0,
                height: 30.0,
                child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.white24)
                          )
                      )
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                 child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 200.0,
                height: 30.0,
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Color(0x00ed348d))
                          )
                      )
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: const Icon(Icons.chrome_reader_mode, size: 23),
                  label: const Text("Continue With Google"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}