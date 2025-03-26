
import 'package:flutter/material.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController(initialPage: 0);
    final List<Map<String, dynamic>> data = [
      {
        "title": "Website / App Design UX / UI Design",
        "subTitle": "Creating Engaging Digital Experiences for Websites and Apps through UX/UI Design"
      },
      {
        "title": "Strategic Marketing and Creative Content",
        "subTitle": "Elevating Brands and Engagement through Strategic Marketing and Creative Content"
      },
      {
        "title": "Multivendor eCommerce Website Solutions",
        "subTitle": "Unlocking the World of Multivendor eCommerce Websites"
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Service"),),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: (){
                      _controller.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut
                      );
                    },
                    icon: Icon(Icons.arrow_left)
                ),
                IconButton(
                    onPressed: (){
                      _controller.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut
                      );
                    },
                    icon: Icon(Icons.arrow_right)
                ),
              ],
            ),

            SizedBox(
              height: 366,
              child: PageView.builder(
                itemCount: data.length,
                controller: _controller,
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return ServiceCard(
                      title: "${data[index]["title"]}",
                      subTitle: "${data[index]["subTitle"]}",
                    );
                  }
              ),
            )

          ],
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {

  final String? title;
  final String? subTitle;
  const ServiceCard({
    super.key, this.title, this.subTitle
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              Text("$title", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
              const SizedBox(height: 10,),
              Text(
                "$subTitle",
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
    );
  }
}
