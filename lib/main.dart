import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> category = ["candy","cup","orange","cassata"];
    // List<String> Product = ["green candy","pink queen","yellow","cassata"];
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: ScreenHeight * 0.35,
                    color: Colors.blueAccent,
                    width: ScreenWidth,

                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Welcome To",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 8,),
                            Text("Ice Creame Corner",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:30,left:50),
                        child: Image.asset("assets/images/icream1.png",height: 170,),
                      ),
                    ],
                  ),
                  Category(),

                ],
              ),
              Product(),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  List<String> category = ["candy","cup","cone","Stick","cassata","Organic","Gluten free","Buckets","Sundae" ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:220),
      child: Container(
        height: 80,
        // child: ListView(
         child: ListView.builder(
           // itemCount: 2,
           itemCount: category.length,
           itemBuilder: (context,index) {
             return  Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 decoration: BoxDecoration(
                     color: Colors.deepOrange,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 height: 60,
                 width: 160,
                 // child: Center(child: Text("category1",style: TextStyle(
                 child: Center(child: Text(category[index],style: TextStyle(
                   fontSize: 18,
                 ),)),
               ),
             );
           },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          // children: <Widget>[
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.deepOrange,
          //           borderRadius: BorderRadius.circular(10)
          //         ),
          //         height: 60,
          //         width: 160,
          //         child: Center(child: Text("category1",style: TextStyle(
          //           fontSize: 18,
          //         ),)),
          //       ),
          //     ),
          // ],
        ),
      ),
    );
  }
}


class Product extends StatelessWidget {
  List<String> product = ["orange candy","choco bar","Vanilla","Coffee Ice Cream","Chocolate chip","Blueberry","ButterMilk"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            color: Colors.teal,
              child: Center(child: Text(product[index])),
            ),
          );
    }
      ),
    );
  }
}
