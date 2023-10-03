class LoginRequest {
  String phoneNumber;
  String password;
  String deviceType;

  LoginRequest({
    required this.phoneNumber,
    required this.password,
    required this.deviceType,
  });

  Map<String, dynamic> toJson() {
    return {
      'phone_number': phoneNumber,
      'password': password,
      'device_type': deviceType,
    };
  }
}
