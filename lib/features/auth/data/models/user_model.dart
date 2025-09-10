class UserModel {
  String? message;
  User? user;
  String? token;

  UserModel(this.message, this.user, this.token);

  factory UserModel.formJson(Map<String, dynamic> jsonData) {
    return UserModel(jsonData["message"], jsonData["user"], jsonData["token"]);
  }


  Map<String,dynamic>toJson(){
    return{
      "message":message,
      "user":user,
      "token":token,
    };
  }
}
class User {
  final String? name;
  final String? email;

  User(this.name, this.email);
}
