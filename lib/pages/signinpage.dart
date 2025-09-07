import 'package:flutter/material.dart';
import 'package:sad_travel_project/pages/home_page.dart';
import 'package:sad_travel_project/pages/signuppage.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
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
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Welcome Back!',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
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

                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              Text("Remember me"),
                            ],
                          ),
                          Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),


                      ElevatedButton(
                        onPressed: () {
                          // After successful sign in
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Sign In Successful!')),
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
                        child: Text("Sign In"),
                      ),

                      SizedBox(height: 20),
                      Center(child: Text("OR CONTINUE WITH")),
                      SizedBox(height: 15),

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
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min, // Wrap row tightly around content
                          children: [
                            Text("Don't have an account?"),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignUpPage()),
                                );
                              },
                              child: Text("Sign Up"),
                            ),
                          ],
                        ),
                      )


                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
