import 'package:flutter/material.dart';
import 'package:sad_travel_project/pages/home_page.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            // padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade400,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Email Field
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Email Address",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Password Field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Confirm Password Field
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: Icon(Icons.visibility),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Sign Up Button
                      ElevatedButton(
                        onPressed: () {
                          // After successful sign in
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Sign Up Successful!')),
                          );
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage(username: 'Joy')),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text("Sign Up"),
                      ),


                      SizedBox(height: 20),
                      Center(child: Text("OR CONTINUE WITH")),
                      SizedBox(height: 15),

                      // Social Login Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.facebook, color: Colors.blue),
                            label: Text("Facebook"),
                          ),
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.g_mobiledata, color: Colors.red),
                            label: Text("Google"),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Go back to Sign In page
                            },
                            child: Text("Sign In"),
                          ),
                        ],
                      ),
                    ],
                  ),
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
