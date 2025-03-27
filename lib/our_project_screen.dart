import 'package:flutter/material.dart';

class OurProjectScreen extends StatelessWidget {
  OurProjectScreen({super.key});

  final List<String> projectList = [
    "project_one",
    "project_two",
    "project_three",
    "project_four"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Our Projects".toUpperCase()),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Presenting My Design Portfolio and Case Studies", style: TextStyle(fontSize:40, fontWeight: FontWeight.bold, height: 1.2 ),
                textAlign: TextAlign.center,
              ),
               const SizedBox(height: 30,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                           backgroundColor: Colors.blue,
                           padding: const  EdgeInsets.symmetric(horizontal: 40)
                       ),
                       onPressed: (){

                       },
                       child: const Text("All",  style: TextStyle(fontSize:15, color: Colors.white, fontWeight: FontWeight.bold, height: 1.2 ))
                   ),
                   const SizedBox(width: 15,),
                   const CustomOutlineButton(
                     buttonName: "UI/UX Design",
                   )
                 ],
               ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomOutlineButton(
                    buttonName: "Branding Design",
                  ),
                  SizedBox(width: 15,),
                  CustomOutlineButton(
                    buttonName: "Wordpress",
                  )
                ],
              ),
              const SizedBox(height: 30,),
              // ListView.separated(
              //     shrinkWrap: true,
              //     itemBuilder: (context, index){
              //       return Image.asset("assets/image/${projectList[index]}.png");
              //     },
              //     separatorBuilder: (context, index){
              //       return const SizedBox(height: 30);
              //     },
              //     itemCount: projectList.length
              // )

              Column(
                children: [
                  for(int i = 0; i < projectList.length; i++)
                  Column(
                    children: [
                      Image.asset("assets/image/${projectList[i]}.png"),
                      const SizedBox(height: 30,)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  final String? buttonName;
  const CustomOutlineButton({
    super.key, this.buttonName
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          elevation: 0,
          side: const  BorderSide(color: Colors.blue)
        ),
        onPressed: (){

        },
        child: Text("$buttonName",  style: const TextStyle(fontSize:15, color: Colors.blue, fontWeight: FontWeight.bold, height: 1.2 ))
    );
  }
}
