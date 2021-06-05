class USerModel {
  int? id;
  String? name;
  String? email;
  String? username;
  String? roles;
  String? phone;
  String? token;

  USerModel(
      {this.id,
      this.name,
      this.email,
      this.username,
      this.roles,
      this.phone,
      this.token});

  USerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    username = json['username'];
    roles = json['roles'];
    phone = json['phone'];
    token = json['token'];
  }

  Map<String, dynamic> tJson() {
    return {
      'id': id,
      'nama': name,
      'email': email,
      'username': username,
      'roles': roles,
      'phone': phone,
      'token': token
    };
  }
}
