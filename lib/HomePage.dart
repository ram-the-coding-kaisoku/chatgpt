import 'package:chatgpt/feature_box.dart';
import 'package:chatgpt/pallete.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Anie"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              // To hold the image
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 100,
                child: Image.asset("assets/images/virtualAssistant.png"),
              ),
              // TO show the welcome message
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).copyWith(
                    topLeft: const Radius.circular(0),
                  ),
                  border: Border.all(
                    color: Pallete.borderColor,
                  ),
                ),
                child: const Text(
                  "Good morning what task can i do for you?",
                  style: TextStyle(fontSize: 20, color: Pallete.mainFontColor),
                ),
              ),
              // Text to show extra features
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Here are some features!",
                  style: TextStyle(
                      color: Pallete.mainFontColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              // to show the list of features
              const SizedBox(
                height: 10,
              ),
              const Column(
                children: [
                  FeatureBox(
                    color: Pallete.firstSuggestionBoxColor,
                    featureText: "Chat-GPT",
                    descriptionText:
                        "A smarter way to stay organized and informed with chatGPT",
                  ),
                  FeatureBox(
                    color: Pallete.secondSuggestionBoxColor,
                    featureText: "Dall-E",
                    descriptionText:
                        "Get inspired and stay creative with your personal assistant powered by Dall-E",
                  ),
                  FeatureBox(
                    color: Pallete.thirdSuggestionBoxColor,
                    featureText: "Smart voice assistant",
                    descriptionText:
                        "Get the best of both worlds powered by Dall-E and chatGPT",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: () {},
        child: const Icon(Icons.mic),
      ),
      
    );
  }
}
