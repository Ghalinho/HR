import 'package:flutter/material.dart';
import 'package:hr/services/employee_service.dart';

class EmployeeListScreen extends StatefulWidget {
  const EmployeeListScreen({super.key});

  @override
  State<EmployeeListScreen> createState() => _EmployeeListScreenState();
}

class _EmployeeListScreenState extends State<EmployeeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: DataTable(
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Department')),
          DataColumn(label: Text('Phone')),
          DataColumn(label: Text('Address')),
          DataColumn(label: Text('Hire Date')),
        ],
        rows:  [
        ...EmployeeService.employees.map((employee) => DataRow(cells: [
           DataCell(Text(employee.id)),
           DataCell(Text(employee.name)),
           DataCell(Text(employee.department)),
           DataCell(Text(employee.phone)),
           DataCell(Text(employee.address)),
           DataCell(Text(employee.hireDate)),
         ])),
       
      
      
      
      
      
      
      
        ],
      ),
    );
  }
}