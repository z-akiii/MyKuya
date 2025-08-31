import 'package:flutter/material.dart';
import 'package:mykuya/screens/home_page.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child:Text(
                  "Welcome to MyKuya!",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
                ), 
                ),
                SizedBox(height: 8),
                Center(child: Text("Enter your email to sign up for MyKuya!")),
                SizedBox(height: 24),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomePage())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                  child: Text("Continue"),
                ),
                SizedBox(height: 32),
                  //horizantal lines using divider and inputting of or 
                  Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text("or"),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                OutlinedButton.icon(
                  onPressed: () {
                    //database
                },
                  icon: Icon(Icons.g_mobiledata), // Placeholder icon
                  label: Text("Continue with Google"),
                  style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black),
                ),
                SizedBox(height: 8),
                OutlinedButton.icon(
                  onPressed: () {
                    //database
                },
                  icon: Icon(Icons.apple),
                  label: Text("Continue with Apple"),
                  style: OutlinedButton.styleFrom(minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.grey[300],
                  foregroundColor: Colors.black),
                ),
                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text("Already have an account?"),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      //TextSpan(text: "Already have an account?\n"),
                      TextSpan(text: "By clicking continue, you agree to our "),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
