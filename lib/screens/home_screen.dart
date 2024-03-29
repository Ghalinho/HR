import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hr/screens/employee_edit_screen.dart';
import 'package:hr/screens/employee_list_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('HR App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to HR App',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SvgPicture.asset(
              'assets/images/frame 1.svg',
              width: 100,
              height: 100,
             // color: Colors.red,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmployeeListScreen()),
                );
              },
              child: const Text('Employee List'),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmployeeFormScreen()),
                );
              },
              child: Text('Add Employee'),
            ),
          ],
        ),
      ),
    );
  }
}
