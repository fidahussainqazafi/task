class ForgotModel {
  final String oldpassword;
  final String newpassword;
  final String reenterpassword;



  ForgotModel({
    required this.oldpassword,
    required this.newpassword,
    required this.reenterpassword,


  });

  Map<String, dynamic> toMap() {
    return {
      'oldpassword': oldpassword,
      'newpassword': newpassword,
      'reenterpassword': reenterpassword,


    };
  }

  factory ForgotModel.fromMap(Map<String, dynamic> json) {
    return ForgotModel(
      oldpassword: json['oldpassword'],
      newpassword: json['newpassword'],
      reenterpassword: json['reenterpassword'],


    );
  }
}
