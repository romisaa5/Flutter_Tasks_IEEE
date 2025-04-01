import 'package:flutter/material.dart';
import 'package:task1/views/scendpage.dart';


class Fristscreen extends StatelessWidget {
  const Fristscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 250,
                  width: 320,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 231, 239),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Color.fromARGB(255, 124, 119, 119),
                            ),
                            onPressed: () {},
                          ),
                          const SizedBox(
                            width: 87,
                          ),
                          const Text(
                            "Login",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 87,
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.notifications,
                              color: Color.fromARGB(255, 124, 119, 119),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      const Divider(
                        color:Color.fromARGB(255, 124, 119, 119),
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color.fromARGB(255, 121, 69, 160), Color.fromARGB(255, 182, 166, 233)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: const Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Text(
                        "Please Login To continue",
                        style: TextStyle(
                            color: Color.fromARGB(255, 124, 119, 119),
                            fontSize: 14),
                      )
                    ],
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
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 123, 49, 128),
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
                      color:Color.fromARGB(255, 123, 49, 128),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 200.0),
                child: Text("Forget Password ?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 123, 49, 128), fontSize: 14)),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                
                height: 40,
                width: 350,
                child: ElevatedButton(
                  
                  onPressed: () {},
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "  OR  ",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do Create Your acount?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondPage()),
                        );
                      },
                      child: const Text(
                        '   Register',
                        style: TextStyle(
                          color: Color.fromARGB(255, 123, 49, 128),
                          fontSize: 16,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
