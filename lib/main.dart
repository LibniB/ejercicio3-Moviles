import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_4/homeScreen.dart';

void main() {
  runApp(HospitalApp());
}

class HospitalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hospital Menu',
      theme: ThemeData(
        primaryColor: Colors.orange,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
      ),
      home: HomeScreen(),
    );
  }
}


class CitasMedicasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Citas Médicas'),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: citasMedicasItems.map((item) {
            return Card(
              child: ListTile(
                leading: Icon(item['icon'],color: Colors.orange,),
                title: Text(
                  item['nombre'],
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  // Acción al hacer clic en cada item
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> citasMedicasItems = [
  {'nombre': 'Medicina General', 'icon': Icons.medical_information},
  {'nombre': 'Odontología', 'icon': Icons.medical_information},
  {'nombre': 'Psicología', 'icon': Icons.medical_information},
  {'nombre': 'Cardiología', 'icon': Icons.medical_information},
  {'nombre': 'Neurología', 'icon': Icons.medical_information},
  {'nombre': 'Ginecología', 'icon': Icons.medical_information},
  {'nombre': 'Dermatología', 'icon': Icons.medical_information},
  {'nombre': 'Pediatría', 'icon': Icons.medical_information},
  {'nombre': 'Oftalmología', 'icon': Icons.medical_information},
  {'nombre': 'Ortopedia', 'icon': Icons.medical_information},
];
