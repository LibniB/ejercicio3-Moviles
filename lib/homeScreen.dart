

import 'package:flutter/material.dart';
import 'package:flutter_application_4/main.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(child: Text('Menu Hospital')),
      ),
      body: Container(
        color: Colors.grey[50],
        child: GridView.builder(
          padding: EdgeInsets.all(10.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: menuItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if (menuItems[index]['titulo'] == 'Citas Médicas') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CitasMedicasScreen()),
                  );
                }
              },
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(menuItems[index]['icon'], size: 40.0, color: Colors.orange),
                    SizedBox(height: 5.0),
                    Text(
                      menuItems[index]['titulo'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12.0, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> menuItems = [
  {'titulo': 'Citas Médicas', 'icon': Icons.local_hospital},
  {'titulo': 'Urgencias', 'icon': Icons.add_alert},
  {'titulo': 'Especialistas', 'icon': Icons.people},
  {'titulo': 'Farmacia', 'icon': Icons.local_pharmacy},
  {'titulo': 'Pacientes', 'icon': Icons.person},
  {'titulo': 'Terapias', 'icon': Icons.healing},
  {'titulo': 'Laboratorio', 'icon': Icons.biotech},
  {'titulo': 'Sangre', 'icon': Icons.bloodtype},
  {'titulo': 'Rehabilitación', 'icon': Icons.accessibility},
  {'titulo': 'Consultas', 'icon': Icons.question_answer},
  {'titulo': 'Informes', 'icon': Icons.insert_drive_file},
  {'titulo': 'Calendario', 'icon': Icons.calendar_today},
  {'titulo': 'Pagos', 'icon': Icons.payment},
  {'titulo': 'Contactos', 'icon': Icons.contacts},
  {'titulo': 'Información', 'icon': Icons.info},
];

