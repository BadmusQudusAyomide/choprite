import 'package:choprite/pages/details.dart';
import 'package:choprite/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50.0, left: 20.0, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello, Samuel,', style: AppWidget.boldTextFieldStyle()),
                Container(
                  margin: const EdgeInsets.only(right: 20,),
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text('Delicious Food', style: AppWidget.HeadlineTextFieldStyle()),
            Text('Discover and get great food',
                style: AppWidget.LightTextFieldStyle()),
            const SizedBox(
              height: 20.0,
            ),
            showItem(),
            const SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details()));
                    },

                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding:const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Image.asset("images/fried rice.jpg", height:150.0, width: 150.0,fit:BoxFit.cover),
                            Text('Fried rice', style: AppWidget.SemiBoldTextFieldStyle(),),
                            const SizedBox(height: 5.0,),
                             Text('fresh and healthy', style: AppWidget.LightTextFieldStyle(),),
                             const SizedBox(height: 5.0,),
                             Text("₦2,500", style: AppWidget.SemiBoldTextFieldStyle(),),
                          ],),
                        ),
                      ),
                    ),
                  ),
                   const SizedBox(width: 20.0,),
                   Container(
                     child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        margin:const EdgeInsets.all(5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/jollof.jpg", height:150.0, width: 150.0,fit:BoxFit.cover),
                          Text('Fried rice', style: AppWidget.SemiBoldTextFieldStyle(),),
                          const SizedBox(height: 5.0,),
                           Text('fresh and healthy', style: AppWidget.LightTextFieldStyle(),),
                           const SizedBox(height: 5.0,),
                           Text("₦2,500", style: AppWidget.SemiBoldTextFieldStyle(),),
                        ],),
                      ),
                                       ),
                   ),
                  const SizedBox(width: 20.0,),
                   Container(
                    margin: const EdgeInsets.all(5.0),
                     child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding:const EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/fried rice.jpg", height:150.0, width: 150.0,fit:BoxFit.cover),
                          Text('Fried rice', style: AppWidget.SemiBoldTextFieldStyle(),),
                          const SizedBox(height: 5.0,),
                           Text('fresh and healthy', style: AppWidget.LightTextFieldStyle(),),
                           const SizedBox(height: 5.0,),
                           Text("₦2,500", style: AppWidget.SemiBoldTextFieldStyle(),),
                        ],),
                      ),
                                       ),
                   ),
                ],
              ),
            ),
            const SizedBox(height:30.0),
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: Material(
                elevation: 5.0,
                borderRadius:BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/jollof.jpg", height:120,width:120,fit:BoxFit.cover,),
                      const SizedBox(height: 20.0),
                      Column(children:[
                        SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text('Jollof rice', style: AppWidget.SemiBoldTextFieldStyle(),)),
                          const SizedBox(height: 5.0,),
                           SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text('Sweet smoky party jollof', style: AppWidget.LightTextFieldStyle(),)),
                           const SizedBox(height: 5.0,),
                           SizedBox(
                          width: MediaQuery.of(context).size.width/2,
                          child: Text('₦3,000', style: AppWidget.SemiBoldTextFieldStyle(),)),
                      ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: icecream ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "images/ice-cream.png",
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.cover,
                  color: icecream ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: pizza ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "images/pizza.png",
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.cover,
                  color: pizza ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: salad ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "images/salad.png",
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.cover,
                  color: salad ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              icecream = false;
              pizza = false;
              salad = false;
              burger = true;
              setState(() {});
            },
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                    color: burger ? Colors.black : Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "images/burger.png",
                  height: 40.0,
                  width: 40.0,
                  fit: BoxFit.cover,
                  color: burger ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
