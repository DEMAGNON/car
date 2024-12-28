
import 'package:flutter/material.dart';
import 'car.dart';





class MyHome extends StatefulWidget {
  const MyHome({super.key});


  @override
  MyHomeState createState() => MyHomeState();
}


class MyHomeState extends State<MyHome>{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //le TextField
              Flexible(
                flex: 7,
                child: TextField(

                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: const TextStyle(color: Colors.black) ,
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.black),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),

              ),

              Flexible(
                  flex: 2,
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset('assets/images/homme.webp',
                        fit: BoxFit.cover,

                      ),
                    ),
                  )
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white60,

        ),





        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0, bottom: 0.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Brands", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>const CarPage()));
                      },
                      child: const Row(
                        children: [
                          Text("See All", style:TextStyle(fontSize: 15, color: Colors.black),),
                          Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,)
                        ],
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 120,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagesAssets.length,
                      itemBuilder:(context, index){
                        return Container(
                          width: 85,
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(imagesAssets[index],
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                              Text(text1[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              Text(text2[index],
                                style: const TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        );
                      }
                  ),
                ),
              ),






            ],
          ),
        )
    );

  }

  final List<String> imagesAssets = [
    'assets/images/mercede.png',
    'assets/images/bmw.png',
    'assets/images/Porsche.png',
    'assets/images/mazda.png',
    'assets/images/ducati.jpeg',
    'assets/images/honda.png',
    'assets/images/jaguar.jpg',
    'assets/images/lada.png',
    'assets/images/maserati.png',
    'assets/images/nissan.jpeg',
    'assets/images/peugeot.png',
    'assets/images/Vauxhall.jpg',
    'assets/images/Chevrolet.jpg',
    'assets/images/toyota.jpeg',
    'assets/images/subaru.webp',
  ];

  final List<String> text1 = [
    "Mercedes",
    "BMW",
    "Porsche",
    "Mazda",
    "Ducati",
    "Honda",
    "Jaguar",
    "Lada",
    "Maserati",
    "Nissan",
    "Peugeot",
    "Vauxhall",
    "Chevrolet",
    "Toyota",
    "Subaru",
  ];

  final List<String> text2 = [
    "+32",
    "+12",
    "+8",
    "+16",
    "+44",
    "+56",
    "+10",
    "+13",
    "+15",
    "19",
    "+23",
    "+32",
    "+11",
    "+17",
    "+14",
  ];


}

