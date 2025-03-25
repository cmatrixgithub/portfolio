
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Service"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                print("Click");
              },
              child: Container(
                width: double.infinity,
                height: 366,
                decoration: BoxDecoration(
                  color: const Color(0xFF0077FF),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, right: 9, top: 30, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/logo/web.png"),
                      const SizedBox(height: 10,),
                      const Text("Website / App Design UX / UI Design", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                      const SizedBox(height: 10,),
                      const Text(
                        "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Learn more",  style: TextStyle(color: Colors.white, fontSize: 18),),
                          const SizedBox(width: 8,),
                          Image.asset("assets/logo/arrow_right.png"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
