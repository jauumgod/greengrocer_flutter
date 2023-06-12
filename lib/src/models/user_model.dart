class UserModel {
  String ? name,
  email,
  phone,
  cpf,
  password,
  id,
  token;

  UserModel({ this.name,
     this.email,
     this.phone,
     this.cpf,
     this.password,
     this.id,
     this.token
  });


  factory UserModel.fromMap(Map<String, dynamic>map){
        return UserModel(
      cpf: map['cpf'],
      email: map['email'],
      id: map['id'],
      name: map['name'],
      password: map['password'],
      phone: map['phone'],
      token: map['token'],
    );
  }

  @override
  String toString() {
    return "name: $name | cpf: $cpf";
  }

}

