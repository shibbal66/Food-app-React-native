import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String selected="dash";
  String pagetitle="Admin Dashboard";

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
        body: Row(
            children: [
              Expanded(
                flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/logoDashboard.PNG"),
                              ),
                            border: Border(bottom:
                            BorderSide(color: Colors.black,width: 2),right: BorderSide(color: Colors.black,width: 2)
                            )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.only(top: 30),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(border: Border(right: BorderSide(color: Colors.black,width: 2))),
                          child: Column(
                            children: [
                              GestureDetector(
                                  child:
                                  Text("Dashboard",style:
                                  TextStyle(fontSize: 20,color: (selected=="dash")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                  ),
                                onTap: (){
                                    setState(() {
                                      selected="dash";
                                      pagetitle="Admin Dashboard";
                                    });
                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Statistiques",style:
                                TextStyle(fontSize: 20,color: (selected=="statistiques")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){
                                  setState(() {
                                    selected="statistiques";
                                    pagetitle="Statistiques";
                                  });

                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Users",style:
                                TextStyle(fontSize: 20,color: (selected=="users")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){
                                  setState(() {
                                    selected="users";
                                    pagetitle="Users";
                                  });

                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Recettes",style:
                                TextStyle(fontSize: 20,color: (selected=="recettes")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){
                                  setState(() {
                                    selected="recettes";
                                    pagetitle="Recettes";
                                  });

                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Settings",style:
                                TextStyle(fontSize: 20,color: (selected=="settings")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){
                                  setState(() {
                                    selected="settings";
                                    pagetitle="Settings";
                                  });
                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Profile",style:
                                TextStyle(fontSize: 20,color: (selected=="profile")?Colors.red:Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){
                                  setState(() {
                                    selected="profile";
                                    pagetitle="Profile";
                                  });
                                },
                              ),
                              Divider(height: 40,),
                              GestureDetector(
                                child:
                                Text("Logout",style:
                                TextStyle(fontSize: 20,color: Colors.black,decoration: TextDecoration.none,fontWeight: FontWeight.w100),
                                ),
                                onTap: (){

                                },
                              ),
                            ],
                          ),
                          ),
                      ),
                    ],
                  )
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 30),
                          decoration: BoxDecoration(
                              border: Border(bottom:
                              BorderSide(color: Colors.black,width: 2))
                              ),
                          child: Text(pagetitle,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w100,color: Colors.red,decoration: TextDecoration.none),),
                          ),
                        ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(40),
                          alignment: Alignment.center,
                          child: ListView.builder(itemBuilder: (context,i){
                            return Container(
                              margin: EdgeInsets.only(bottom: 40),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("title"),
                                  Container(
                                    alignment: Alignment.center,
                                      width: 200,
                                      child: Text("description")),
                                  Row(
                                    children: [
                                      IconButton(onPressed: (){}, icon: Icon(Icons.edit, color: Colors.red,)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red,)),
                                    ],
                                  ),

                                ],
                              ),
                            );
                          },itemCount: 10,)
                        )
                      )
                    ],
                  )
              ),
            ],
          ),
    );
  }
}
