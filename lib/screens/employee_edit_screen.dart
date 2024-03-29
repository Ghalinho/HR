import 'package:flutter/material.dart';
import 'package:hr/models/employee_form_screen.dart';
import 'package:hr/services/employee_service.dart';

class EmployeeFormScreen extends StatefulWidget {
  const EmployeeFormScreen({super.key});

  @override
  State<EmployeeFormScreen> createState() => _EmployeeFormScreenState();
}

class _EmployeeFormScreenState extends State<EmployeeFormScreen> {
  final _formKey = GlobalKey<FormState>();

  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _departmentController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _hireDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'ID'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _departmentController,
                decoration: InputDecoration(labelText: 'Department'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a department';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a phone number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _hireDateController,
                decoration: InputDecoration(labelText: 'Hire Date'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a hire date';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Add the employee
                    final employee = Employee(
                      id: _idController.text,
                      name: _nameController.text,
                      department: _departmentController.text,
                      phone: _phoneController.text,
                      address: _addressController.text,
                      hireDate: _hireDateController.text,
                    );

                    EmployeeService.addEmployee(employee);

                    // Navigate back to the employee list screen
                    Navigator.pop(context);
                  }
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}