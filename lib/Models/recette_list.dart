import 'package:flutter/material.dart';
import 'package:pfa2/Models/recette.dart';
class RecetteData extends ChangeNotifier{
  List<Recette> recettes=[
    Recette(name: "couscous",
        description: "Couscous is a North African dish made from tiny steamed balls of semolina flour. "
            "Though we think of it and cook it as a grain, it is actually a type of pasta. Traditional couscous "
            "is steamed in a special double-chambered cooking vessel called a couscousière. "
            "It is a multi-step, time-consuming process. However, in the States, the instant variety of couscous is"
            " much more prevalent. Because it is partially pre-cooked, it cooks in just 5 minutes, making it one of the easiest,"
            " fastest, most versatile side dishes you can have make — much quicker than rice or mashed potatoes. The cooking "
            "instructions on the back of the box make fine couscous, but this recipe shows how to take it up a notch.",
        images: ["images/cs1.png","images/cs2.png","images/cs3.png","images/cs4.png"]),
    Recette(name: "Spaghetti",
        description: "Spaghetti (Italian: [spaˈɡetti]) is a long, thin, solid, cylindrical pasta. "
            "It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat, "
            "water, and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum-wheat "
            "semolina.",
        images: ["images/sp1.jpg","images/sp2.jpg","images/sp3.jpg"])

  ];

}
