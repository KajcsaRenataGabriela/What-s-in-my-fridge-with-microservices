class UserModel {
  final String id;
  final String email;

  UserModel({required this.id, required this.email});

  static UserModel fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      email: map['email'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
    };
  }
}
