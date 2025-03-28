
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class ContactMeScreen extends StatefulWidget {
   const ContactMeScreen({super.key});

  @override
  State<ContactMeScreen> createState() => _ContactMeScreenState();
}

class _ContactMeScreenState extends State<ContactMeScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController helpController = TextEditingController();

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text("Contact me".toUpperCase()), backgroundColor: Colors.blue,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text("Request Free Consultancy"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                height: 272,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hotline 24/7"),
                    Text("(+23) 5535 68 68"),
                    Text("Address: 2972 Westheimer Rd. Santa Ana, Illinois 85486 "),
                    Text("Email: nevaeh.simmons@example.com"),
                    Text("Fax: (702) 555-0122"),
                    Text("Work Hour: Mon - Sat: 9:00 - 18:00"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  CustomTextField(
                    height: 50,
                    hintText: "Name*",
                    textEditingController: nameController,
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    height: 50,
                    hintText: "Email Address*",
                    textEditingController: emailController,
                  ),
                  const SizedBox(height: 15,),
                  CustomTextField(
                    height: 50,
                    hintText: "How can we help you?",
                    textEditingController: helpController,
                  ),

                  const SizedBox(height: 15,),
                  CustomTextField(
                    maxLine: 5,
                    hintText: "How can we help you?",
                    textEditingController: helpController,
                  ),
                ],
              ),
            ),

            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value){
                    setState(() {
                      isChecked = value!;
                    });
                  }
                ),
                Expanded(
                  child: RichText(
                      text:  TextSpan(
                        text: "By submitting, i’m agreed to the",
                        style: TextStyle(
                          fontSize: 14
                        ),
                        children: [
                          TextSpan(
                            text: " Terms & Conditons",
                            style: const TextStyle(
                              fontSize: 14,
                              decoration: TextDecoration.underline,

                            ),
                            recognizer: TapGestureRecognizer()..onTap = () async {
                              print("Click");
                            },
                          )
                        ]
                      )
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00489A),
                        minimumSize: const  Size(double.infinity, 40)
                    ),
                    onPressed: (){},
                    child: const Text("Hire me!", style: TextStyle(color: Colors.white, fontSize: 18))
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? textEditingController;
  final int? maxLine;
  final double? height;
  const CustomTextField({
    super.key, this.hintText, this.textEditingController, this.maxLine, this.height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        maxLines: maxLine,
        controller: textEditingController,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none
          ),
          hintText: hintText,

        ),

      ),
    );
  }
}
