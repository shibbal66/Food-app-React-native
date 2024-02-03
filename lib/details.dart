import 'package:flutter/material.dart';

import 'Models/recette.dart';
class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.recette}) : super(key: key);
  final Recette recette;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int index=0;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    List<String> imgs=widget.recette.images;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
                children: [
                  Container(
                    height: size.height*0.6,
                    width: size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(imgs[index]),fit: BoxFit.fill),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 10,
                    child: IconButton(
                        onPressed: (){Navigator.of(context).pop();},
                        icon: Icon(Icons.arrow_back_ios_sharp,color: Colors.red,size: 50,)),
                  ),
                  Positioned(
                    top: size.height*0.48,
                    child: Container(
                      height: size.height*0.4,
                      width: size.width*0.9,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.7),
                        boxShadow: [BoxShadow(color: Colors.red,blurRadius: 80,offset: Offset(0,10))],
                      ),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text("Description :", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                          Container(
                            height: 130,
                            width: 260,
                            margin: EdgeInsets.only(top: 15),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(widget.recette.description),
                          ),
                          ),
                          Container(
                            height: 80,
                            width: 260,
                            padding: EdgeInsets.symmetric(vertical: 5),
                            margin: EdgeInsets.only(top: 15),
                            child: ListView.builder(itemBuilder: (context,i){
                              return GestureDetector(
                                onTap: (){
                                  setState(() {
                                    index=i;
                                    print(i);
                                  });
                                },
                                child: Container(
                                  height: 70,
                                  width: 70,
                                  margin: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(widget.recette.images[i]),fit: BoxFit.fill)
                                  ),
                                ),
                              );
                            },scrollDirection: Axis.horizontal,
                            itemCount: widget.recette.images.length),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                      right: size.width*0.2,
                      child: ElevatedButton(
                        child:
                        Text("Try it   >"),
                        onPressed: (){
                          Navigator.of(context).pushNamed("tryIt");
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          fixedSize: Size(size.width*0.6, 40)
                        ),

                      )
                  )
                ]


        ),
      ),);







  }
}
