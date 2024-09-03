import 'package:choprite/pages/signup.dart';
import 'package:choprite/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: 
      Stack(children: [
          Container(
            width : MediaQuery.of(context).size.width,
            height : MediaQuery.of(context).size.height/2.5,
            decoration: const BoxDecoration(gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Colors.orange, Colors.deepOrange,
            ],
            ),),
          ),
         Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.orangeAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40),)),
          child: const Text(" "),
         ),
         Container(
          margin: const EdgeInsets.only(top: 2.0, left: 20.0, right: 20.0,),
           child: Column(
            children:[
              Center(child: Image.asset('images/logo.png', width: MediaQuery.of(context).size.width/1.5,fit: BoxFit.cover,)),
              const SizedBox(height: 20.0,),
              Material(
                elevation:10.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white54,borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    
                    children: [
                      const SizedBox(height: 30.0,),
                      Text("Login", style: AppWidget.HeadlineTextFieldStyle()),
                      const SizedBox(height: 30.0,),
                      TextField(
                        decoration:InputDecoration(hintText:'Email',hintStyle: AppWidget.SemiBoldTextFieldStyle(), prefixIcon: const Icon(Icons.email_outlined)),
                      ),

                       const SizedBox(height: 30.0,),
                      TextField(
                        obscureText: true,
                        decoration:InputDecoration(hintText:'Password',hintStyle: AppWidget.SemiBoldTextFieldStyle(), prefixIcon: const Icon(Icons.password_outlined)),
                      ),
                      const SizedBox(height:20.0),
                      Container(
                        alignment:Alignment.topRight,
                        child: Text('forgot pasword?',style: AppWidget.SemiBoldTextFieldStyle(),)),
                        const SizedBox(height:80.0),
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5.0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            width: 200,
                            decoration: BoxDecoration(color: Colors.deepOrangeAccent,borderRadius: BorderRadius.circular(20)),
                            child: const Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),))
                          ),
                        ),
                         const SizedBox(height: 70.0,),
                        GestureDetector(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>const Signup()));
                          },
                          child: Text("Don't have an account? Sign up" , style: AppWidget.SemiBoldTextFieldStyle(),)),
                    ],
                  ),
                ),
              ),
            ],
           ),
         ),
      ],),
      
      ),
    );
  }
}