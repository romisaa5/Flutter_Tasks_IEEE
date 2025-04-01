import 'package:flutter/material.dart';
import 'package:task1/widgets/custom_button.dart';



class verificationScreen extends StatefulWidget {
  @override
  _verificationScreenState createState() => _verificationScreenState();
}

class _verificationScreenState extends State<verificationScreen> {
  List<TextEditingController> controllers =
      List.generate(5, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 15,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Check your email",
              
            ),
            SizedBox(height: 10),
            Text(
              "We sent a reset link to contact@dscode...com\nEnter 5 digit code mentioned in the email",
             
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(5, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    controller: controllers[index],
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    maxLength: 1,
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.isNotEmpty && index < 4) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            CustomButton(
             
              title: "Verify Code",
              
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text('Haven’t got the email yet? '),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Resend email",
                 
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
