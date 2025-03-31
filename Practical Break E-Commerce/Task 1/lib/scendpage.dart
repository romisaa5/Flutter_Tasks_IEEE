import 'package:flutter/material.dart';
import 'package:task1/fristscreen.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xffdeecec),
              borderRadius: BorderRadius.circular(20.0),
            ),
            height: 60,
            width: double.infinity,
            child: Row(children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Fristscreen()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color.fromARGB(255, 221, 59, 48),
                  ),
                ),
              ),
              const SizedBox(
                width: 60,
              ),
              const Text(
                "Back To Login",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              const SizedBox(
                width: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 221, 59, 48),
                ),
              ),
            ]),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.red, Colors.yellow],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: const Text(
            'Sign',
            style: TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: const Icon(
                Icons.people,
                color: Color.fromARGB(255, 221, 59, 48),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: const Icon(
                Icons.email,
                color: Color.fromARGB(255, 221, 59, 48),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: const Icon(
                Icons.key_outlined,
                color: Color.fromARGB(255, 221, 59, 48),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              prefixIcon: const Icon(
                Icons.key_outlined,
                color: Color.fromARGB(255, 221, 59, 48),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds),
            child: SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )),
      ],
    ));
  }
}
