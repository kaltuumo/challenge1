import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayText = ""; // Text to display
  bool isButtonVisible = true; // Flag to control button visibility
  bool showCode = false; // Flag to toggle between text and code view

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background Image
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/back3.png'), // Your background image here
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Display Text or Code
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  displayText,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // If the buttons are visible, show them
              if (isButtonVisible) ...[
                // Button 1: Display Text
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.9, // Button width to fit within screen
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        displayText =
                            " Is there something specific you would like me to display or format in a certain way? Let me know how I can assist you!.";
                        isButtonVisible =
                            true; // Hide buttons after Button 1 is clicked
                      });
                    },
                    child: Text(
                      " I will Happy In Thanks For The Help",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Button 2: Show Code or Reset
                SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.8, // Button width to fit within screen
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (showCode) {
                          displayText =
                              "This is a placeholder text commonly used in publishing and web design. Let me know if you'd like to see more or something else!";
                        } else {
                          displayText =
                              "Is there something specific you would like me to display or format in a certain way?";
                        }
                        showCode =
                            !showCode; // Toggle between text and code view
                      });
                    },
                    child: Text(
                      showCode ? "Reset Button" : "Ask Him If He is A Men",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
