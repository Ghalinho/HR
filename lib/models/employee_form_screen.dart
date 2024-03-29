

class Employee {
  String id;
  String name;
  String department;
  String phone;
  String address;
  String hireDate;

  Employee({
    required this.id,
    required this.name,
    required this.department,
    required this.phone,
    required this.address,
    required this.hireDate,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      department: json['department'],
      phone: json['phone'],
      address: json['address'],
      hireDate: json['hireDate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'department': department,
      'phone': phone,
      'address': address,
      'hireDate': hireDate,
    };
  }
}