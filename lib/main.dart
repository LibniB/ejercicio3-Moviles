import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orangeAccent),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Hospital'),
      ),
      body: Container(
        color: Colors.orange[50],
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
                if (menuItems[index]['title'] == 'Citas Médicas') {
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
                      menuItems[index]['title'],
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

class CitasMedicasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Médicas'),
      ),
      body: Container(
        color: Colors.white, // Ajusta el color de fondo
        child: ListView(
          children: citasMedicasItems.map((item) {
            return Card(
              child: ListTile(
                title: Text(
                  item,
                  style: TextStyle(color: Colors.black87), // Ajusta el color del texto
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

List<Map<String, dynamic>> menuItems = [
  {'title': 'Citas Médicas', 'icon': Icons.local_hospital},
  {'title': 'Urgencias', 'icon': Icons.add_alert},
  {'title': 'Especialistas', 'icon': Icons.people},
  {'title': 'Farmacia', 'icon': Icons.local_pharmacy},
  {'title': 'Pacientes', 'icon': Icons.person},
  {'title': 'Terapias', 'icon': Icons.healing},
  {'title': 'Laboratorio', 'icon': Icons.biotech},
  {'title': 'Sangre', 'icon': Icons.bloodtype},
  {'title': 'Rehabilitación', 'icon': Icons.accessibility},
  {'title': 'Consultas', 'icon': Icons.question_answer},
  {'title': 'Informes', 'icon': Icons.insert_drive_file},
  {'title': 'Calendario', 'icon': Icons.calendar_today},
  {'title': 'Pagos', 'icon': Icons.payment},
  {'title': 'Contactos', 'icon': Icons.contacts},
  {'title': 'Información', 'icon': Icons.info},
];

List<String> citasMedicasItems = [
  'Medicina General',
  'Odontología',
  'Psicología',
  'Cardiología',
  'Neurología',
  'Ginecología',
  'Dermatología',
  'Pediatría',
  'Oftalmología',
  'Ortopedia',
];
