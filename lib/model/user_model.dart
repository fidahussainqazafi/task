class UserModel {
  final String username;
  final String lastname;
  final String email;
  final String phone;
  final String profileImageUrl;


  UserModel({
    required this.username,
    required this.lastname,
    required this.email,
    required this.phone,
    required this.profileImageUrl,

  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'lastname': lastname,
      'email': email,
      'phone': phone,
      'profileImageUrl' : profileImageUrl,

    };
  }

  factory UserModel.fromMap(Map<String, dynamic> json) {
    return UserModel(
      username: json['username'],
      lastname: json['lastname'],
      email: json['email'],
      phone: json['phone'],
      profileImageUrl :json['profileImageUrl'],

    );
  }
}
