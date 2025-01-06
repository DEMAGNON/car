
import 'package:brand/profil.dart';
import 'package:brand/profil.dart';
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
        backgroundColor: Colors.white54,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0, bottom: 0.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 8,
                      child: SearchBar(
                        leading: const Icon(Icons.search_outlined, size: 30,),
                        hintText: 'Search',
                        backgroundColor: WidgetStateProperty.all(Colors.white),
                      ),
                    ),
                    const SizedBox(width: 10,),

                    Flexible(
                        flex: 2,
                        child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                            child: CircleAvatar(
                              child: Image.asset('assets/images/ProfilePic.png',
                                height: 50,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                            )
                        )
                    )
                  ],
                ),
              ),
              const SizedBox(height: 14,),

              Padding(padding: const EdgeInsets.only(left: 25.0, top: 10.0, right: 25.0, bottom: 0.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Brands", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22),),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) =>const CarPage()));
                      },
                      child: const Row(
                        children: [
                          Text("See All", style:TextStyle(fontSize: 15, color: Colors.black),),
                          Icon(Icons.arrow_forward_ios_outlined, color: Colors.black, size: 16,)
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

              const Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 20.0, right: 150.0, bottom: 0.0),
                child: Text("Popular Cars",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 22),
                ),
              ),
              const SizedBox(height: 10,),

              Container(
                width: 290,
                height: 141,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                          child: Text("S 500 Sedan",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 12),
                          ),
                        ),
                        Positioned(
                            top: -80,
                            right: -32,
                            child: Image.asset('assets/images/irisnoir 1.png',
                              width: 180,
                              height: 180,
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Automatic', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0), )),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('5 seats', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('Disel', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 91,
                            height: 32,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                                  minimumSize: const Size(20, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Rent now",style: TextStyle(color: Colors.white, fontSize: 10),  )
                            ),
                          ),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 75,
                            height: 30,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(20, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Detail", style: TextStyle(color: Colors.blue, fontSize: 10),)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 40,),
              Container(
                width: 290,
                height: 141,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                          child: Text("GLA 250 SUV",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 13),
                          ),
                        ),
                        Positioned(
                            top: -80,
                            right: -35,
                            child: Image.asset('assets/images/irisgrille 1.png',
                              width: 180,
                              height: 180,
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Automatic', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0), )),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('5 seats', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('Disel', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 91,
                            height: 32,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                                  minimumSize: const Size(20, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Rent now",style: TextStyle(color: Colors.white, fontSize: 10),  )
                            ),
                          ),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 75,
                            height: 30,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(20, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Detail", style: TextStyle(color: Colors.blue, fontSize: 10),)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,),

              Container(
                width: 290,
                height: 141,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                          child: Text("RAV 490 CUD",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 13),
                          ),
                        ),
                        Positioned(
                            top: -80,
                            right: -35,
                            child: Image.asset('assets/images/R (1).png',
                              width: 180,
                              height: 180,
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Automatic', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0), )),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('5 seats', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('Disel', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 91,
                            height: 32,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                                  minimumSize: const Size(20, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Rent now",style: TextStyle(color: Colors.white, fontSize: 10),  )
                            ),
                          ),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 75,
                            height: 30,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(20, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Detail", style: TextStyle(color: Colors.blue, fontSize: 10),)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,),

              Container(
                width: 290,
                height: 141,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                          child: Text("BUWER DUDF",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 13),
                          ),
                        ),
                        Positioned(
                            top: -80,
                            right: -35,
                            child: Image.asset('assets/images/c.webp',
                              width: 180,
                              height: 180,
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Automatic', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0), )),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('5 seats', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('Disel', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 91,
                            height: 32,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                                  minimumSize: const Size(20, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Rent now",style: TextStyle(color: Colors.white, fontSize: 10),  )
                            ),
                          ),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 75,
                            height: 30,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(20, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Detail", style: TextStyle(color: Colors.blue, fontSize: 10),)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50,),

              Container(
                width: 290,
                height: 141,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                          child: Text("LUV 20 SUV",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 13),
                          ),
                        ),
                        Positioned(
                            top: -80,
                            right: -25,
                            child: Image.asset('assets/images/OIF.jpeg',
                              width: 130,
                              height: 180,
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Automatic', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0), )),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('5 seats', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                          Container(
                            width: 2,
                            height: 20,
                            color: const Color.fromARGB(128, 0, 0, 0),
                          ),
                          const Text('Disel', style: TextStyle(fontSize: 13, color: Color.fromARGB(128, 0, 0, 0),)),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 91,
                            height: 32,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white, backgroundColor: Colors.blue,
                                  minimumSize: const Size(20, 30),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(7.0),
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Rent now",style: TextStyle(color: Colors.white, fontSize: 10),  )
                            ),
                          ),

                          const SizedBox(width: 20,),

                          SizedBox(
                            width: 75,
                            height: 30,
                            child:  ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(20, 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7.0),
                                    ),
                                    side: const BorderSide(
                                      color: Colors.blue,
                                      width: 2.0,
                                    )
                                ),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VehicleListScreen()));
                                },
                                child: const Text("Detail", style: TextStyle(color: Colors.blue, fontSize: 10),)
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
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

