import 'package:flutter/material.dart';
import 'package:login_form/sign_in_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 235, 233),
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              child: Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  'https://technonguide.com/wp-content/uploads/2022/01/PowerPoint-Templates.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              'Find More Friends',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            SizedBox(
              height: 30,
            ),
            const Text(
              'Make a new and beautiful relations!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('Sign Up'))),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Or if you have an account',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 50,
                  width: 350,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Scaffold(
                          body: SignINForm(),
                        );
                      }));
                    },
                    child: const Text('Sign In'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
