// const String userTable = 'users';

// class UsersFields {
//   static final List<String> values = [
//     /// Add all fields
//     id, firstName, lastName, jobTitle, gender, age
//   ];

//   static const String id = '_id';
//   static const String firstName = 'first_name';
//   static const String lastName = 'last_name';
//   static const String jobTitle = 'job';
//   static const String gender = 'gender';
//   static const String age = 'age';
// }

// class UserModel {
//   String firstName;
//   String lastName;
//   String age;
//   String job;
//   String gender;

//   UserModel(
//       {required this.firstName,
//       required this.lastName,
//       required this.age,
//       required this.gender,
//       required this.job});

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     return UserModel(
//       firstName: json["first_name"] ?? "",
//       lastName: json["last_name"] ?? "",
//       age: json["age"] ?? "",
//       gender: json["gender"] ?? "",
//       job: json["job"] ?? "",
//     );
//   }

//   toJson() {
//     return {
//       "first_name": firstName,
//       "last_name": lastName,
//       "age": age,
//       "gender": gender,
//       "job": job,
//     };
//   }
// }
class MindModel {
  String mind;
  String author;

  MindModel({required this.author, required this.mind});

  factory MindModel.fromJson(Map<String, dynamic> json) {
    return MindModel(
        author: json["author"] ?? "Hech kim",
        mind: json["mind"] ?? "Hech nima demagan");
  }

  toJson() {
    return {"mind": mind, "author": author};
  }
}
