import 'package:flutter/material.dart';
import 'api_service.dart';
import 'package:brand/vehicle_model.dart';

class VehicleListScreen extends StatefulWidget {
  const VehicleListScreen({super.key});

  @override
  _VehicleListScreenState createState() => _VehicleListScreenState();
}

class _VehicleListScreenState extends State<VehicleListScreen> {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        const Text("Liste des vehicules"),
      ),
      body:FutureBuilder<List<Vehicle>>(
        future: apiService.getVehicules(),
        builder: (context, snapshot){
          if (snapshot.hasData){
            var data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return ListTile(
                  title:Text("${data[index].make} - ${data[index].model}"),
                  subtitle: Text("${data[index].charge240}"),
                  trailing: Text(
                    "FE Score: ${data[index].fescore}",
                  ),
                );
              },
            );
          } else if (snapshot.hasError){
            return Center(child: Text('${snapshot.error}'),);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ) ,
    );
  }
}
