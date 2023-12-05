class UserModel {
  final String username;
  final String lastname;
  final String email;
  final String phone;


  UserModel({
    required this.username,
    required this.lastname,
    required this.email,
    required this.phone,

  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'lastname': lastname,
      'email': email,
      'phone': phone,

    };
  }

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      lastname: json['lastname'],
      email: json['email'],
      phone: json['phone'],

    );
  }
}
