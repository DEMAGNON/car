import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {

  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Cars Brands", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.yellow,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/mazda.png'),
                      const Text("Mazda")
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.red,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/ducati.jpeg'),
                      const Text("Ducati" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.black,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/jaguar.jpg'),
                      const Text("Jaguar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/lada.png'),
                      const Text("Lada" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/mercede.png'),
                      const Text("Mercedes" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.black,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/nissan.jpeg'),
                      const Text("Nissan" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.black45,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/luxe.jpg'),
                      const Text("Luxeo" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.blueGrey,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/chanel.jpg'),
                      const Text("Chanel")
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.black45,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/maxres.jpg'),
                      const Text("Maxres" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 20.0),
              child:  Container(
                color: Colors.black45,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/honda.png'),
                      const Text("Honda" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 15.0),
              child:  Container(
                color: Colors.black,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/toyota.jpeg'),
                      const Text("Toyota" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 15.0),
              child:  Container(
                color: Colors.black54,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/peugeot.png'),
                      const Text("Peugeot" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 15.0),
              child:  Container(
                color: Colors.brown,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Porsche.png'),
                      const Text("Porsche" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 15.0),
              child:  Container(
                color: Colors.blueAccent,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/subaru.webp'),
                      const Text("Peugeot" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0, bottom: 15.0),
              child:  Container(
                color: Colors.red,
                child: SizedBox(
                  height: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Vauxhall.jpg'),
                      const Text("Vauxhall" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
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
}