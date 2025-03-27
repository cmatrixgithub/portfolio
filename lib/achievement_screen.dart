import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AchievementScreen extends StatelessWidget {
  const AchievementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0077FF),
      appBar: AppBar(
        title: Text("Our Milestones".toUpperCase(),
        style: const TextStyle(color: Colors.white, letterSpacing: 2.0, textBaseline: TextBaseline.alphabetic),

       ),
        backgroundColor: const Color(0xFF0077FF),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              Text("What sets our studio apart for your projects?",
                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              AchievementCard(
                title: "8300+",
                subTitle: "Figma ipsum component variant main layer. Hand.",
              ),
              SizedBox(height: 30,),
              AchievementCard(
                title: "100%",
                subTitle: "Figma ipsum component variant main layer. Union.",
              ),
              SizedBox(height: 30,),
              AchievementCard(
                title: "3.5K",
                subTitle: "Figma ipsum component variant main layer.",
              ),
              SizedBox(height: 30,),
              AchievementCard(
                title: "240+",
                subTitle: "Figma ipsum component variant main layer.",
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  final String? title;
  final String? subTitle;
  const AchievementCard({
    super.key, this.title, this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$title", style: const TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),),
            Text("$subTitle",
                style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,

            )
          ],
        ),
      ),
    );
  }
}
