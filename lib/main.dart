import 'package:flutter/material.dart';
import 'story_brain.dart';

void main() => runApp(Destiny());

StoryBrain storyBrain = StoryBrain(); // Step 9

class Destiny extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF792384),
              Color(0xFFA14463),
              Color(0xFFC4C2B5),
            ],
          ),
        ), // Step 1
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(), // Step 10
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      storyBrain.nextStory(1); // Step 18
                    });
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0), // Step 31.A
                    ),
                  ),
                  child: Text(
                    storyBrain.getChoice1(), // Step 13
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(), // Step 28
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        storyBrain.nextStory(2); // Step 19
                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0), // Step 31.B
                      ),
                    ),
                    child: Text(
                      storyBrain.getChoice2(), // Step 14
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
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
