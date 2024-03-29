
import 'package:hr/models/employee_form_screen.dart';

class EmployeeService {
  static List<Employee> employees = [
    Employee(
      id: '1',
      name: 'John Doe',
      department: 'Sales',
      phone: '0123456789',
      address: '123 Main Street',
      hireDate: '2023-01-01',
    ),
    Employee(
      id: '2',
      name: 'Jane Doe',
      department: 'Marketing',
      phone: '0987654321',
      address: '456 Elm Street',
      hireDate: '2023-02-01',
    ),
  ];

  static List<Employee> getAllEmployees() {
    return employees;
  }

  static Employee getEmployeeById(String id) {
    return employees.firstWhere((employee) => employee.id == id);
  }

  static void addEmployee(Employee employee) {
    employees.add(employee);
  }

  static void updateEmployee(Employee employee) {
    final index = employees.indexWhere((e) => e.id == employee.id);
    if (index != -1) {
      employees[index] = employee;
    }
  }

  static void deleteEmployee(String id) {
    employees.removeWhere((employee) => employee.id == id);
  }
}