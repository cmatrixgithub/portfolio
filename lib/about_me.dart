import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/icon/logo.png"),
        title: const Text("AeroVision"),
        centerTitle: false,
        actions: [
          Image.asset("assets/icon/menu.png")
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipOval(
                  child: Image.asset("assets/image/profile.jpg", fit: BoxFit.cover, height: 200, width: 200,),
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Welcome to my Portfolio", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("Hi I’m", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold)),
                    Text("Robert Junior", style: TextStyle(color: Colors.blue, fontSize: 50, fontWeight: FontWeight.bold)),
                    Text("Product \nDesigner", style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold)),
                    Text("Collaborating with highly skilled individuals, our agency delivers top-quality services.",
                      style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const  Size(double.infinity, 40)
                    ),
                    onPressed: (){},
                    child: const Text("Hire me!", style: TextStyle(color: Colors.white, fontSize: 18))
                ),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize:  const Size(double.infinity, 40),
                      side: const BorderSide(
                          color: Colors.blue
                      )
                  ),
                  onPressed: (){},

                  label: const Text("Hire me!", style: TextStyle(color: Colors.blue, fontSize: 18)),
                  icon: Image.asset("assets/icon/download.png"),
                  iconAlignment: IconAlignment.end,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("User Experience Design - UI/UX"),
                      SizedBox(height: 4,),
                      Stack(
                        children: [
                          Container(
                            height: 24,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12)
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
