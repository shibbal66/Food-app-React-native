import 'package:flutter/material.dart';
import 'package:pfa2/Models/recette_list.dart';
import 'package:pfa2/cardRecItem.dart';
import 'package:pfa2/cardTodaySp.dart';
import 'package:pfa2/details.dart';
import 'package:pfa2/headerHome.dart';
import 'package:pfa2/titleWithBtn.dart';
import 'package:provider/provider.dart';

import 'Models/recette.dart';
class HomePage extends StatelessWidget {

  List<String> images=["images/f1.jpeg","images/f2.jpeg","images/f4.jpeg","images/f5.jpeg"];

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Consumer<RecetteData>(
      builder: (context, recetteData, child){
        return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.red,
            ),
            drawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,backgroundImage: AssetImage("images/logo.png")),
                      decoration: BoxDecoration(color: Colors.red),
                      accountName: Text("userName"),
                      accountEmail: Text("accountEmail@gmail.com"),
                  ),
                  ListTile(title: Text("Home",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.home,size: 35,color: Colors.black,),),
                  ListTile(title: Text("Notifications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.notifications_active,size: 35,color: Colors.black),),
                  ListTile(title: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.login,size: 35,color: Colors.black,),),
                  ListTile(title: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.join_left,size: 35,color: Colors.black,),),
                  ListTile(title: Text("Contact us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.phone,size: 35,color: Colors.black,),),
                  ListTile(title: Text("About us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.info,size: 35,color: Colors.black,),),
                  ListTile(title: Text("Privacy policy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.security,size: 35,color: Colors.black,),),
                  ListTile(title: Text("Logout",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),leading: Icon(Icons.logout,size: 35,color: Colors.black,),),
                ],
              ),
            ),
            body: Stack(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/bc3.jpg"),fit: BoxFit.fill)),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      HeaderHome(size: size),
                      SizedBox(
                        height: 50,
                      ),
                      TitleWithBtn(title: "Recommend", press: (){}),
                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: size.height*0.32,
                        child: ListView.builder(itemBuilder: (context,index){
                          Recette rec=recetteData.recettes[index];
                          return Container(
                              margin: EdgeInsets.all(10),
                              child:
                              CardRecItem(size: size, title: "${rec.name}", image: rec.images[0], press: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen(recette: rec,)));
                              },)
                          );
                        },
                          itemCount: recetteData.recettes.length,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),

                      TitleWithBtn(title: "Today's special", press: (){}),

                      ListView.builder(itemBuilder: (context, i){
                        return  CardTodaySp(size: size, image: images[i], foodName: "food 1");
                      },
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            bottomNavigationBar: Container(
              height: 80,
              padding: EdgeInsets.only(bottom: 20,left: 20,right: 30),
              width: size.width,

              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.red,blurRadius: 80,offset: Offset(0,10))],
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.red,size: 55,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red,size: 55,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.account_circle_rounded,color: Colors.red,size: 55,)),

                ],
              ),
            )
        );
      }

    );
  }
}
