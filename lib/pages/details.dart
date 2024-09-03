import 'package:choprite/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back_rounded, color: Colors.black),
            ),
            Image.asset(
              'images/jollof.jpg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hot food deals',
                      style: AppWidget.SemiBoldTextFieldStyle(),
                    ),
                    Text('Nigerian Jollof Rice',
                        style: AppWidget.boldTextFieldStyle()),
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    if(a>1){
                      --a;
                    }
                    setState(() {

                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.SemiBoldTextFieldStyle(),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                GestureDetector(

                   onTap: () {
                    ++a;
                    setState(() {

                    });
                  },
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
            Text("Nigerian jollof is the best jollof in the world. You can buy as many as possible it is somky and very sweet , when you are done eating don't forget to rate us.You can also give us tips send this account opay:8053467687",
            style: AppWidget.LightTextFieldStyle(),),
            const SizedBox(height: 30.0,),
            Row(children: [
              Text("  Delivery Time",style:  AppWidget.SemiBoldTextFieldStyle()),
              const SizedBox(width:10,),
              const Icon(Icons.alarm, color: Colors.black54,),
              const SizedBox(width: 3,),
              Text("30mins", style: AppWidget.SemiBoldTextFieldStyle(),),
            ],),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price", style: AppWidget.SemiBoldTextFieldStyle(),),
                    Text("₦3,500", style: AppWidget.boldTextFieldStyle()),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    
                    children: [
                      const Text(" Add to cart",style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                      const SizedBox(height: 30.0,),
                    Container(
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(3)),
                      child: const Icon(Icons.shopping_cart_outlined, color:Colors.white),
                    ),
                    ],
                  ),
                ),
              ],),
            ),
          ],
        ),
      ),
    );
  }
}
