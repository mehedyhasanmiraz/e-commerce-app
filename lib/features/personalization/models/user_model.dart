import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../utils/formatters/formatters.dart';

/// -Model class representing user data
class UserModel {
  // keep those value, final which you do not want to update
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// -Helper function to get the full name,
  String get fullName => "$firstName $lastName";

  ///- Helper function to format phone number
  String get formattedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  /// -Static function to split full  name to the first and last name
  static List<String> nameParts(fullName) => fullName.split("");

  /// Static to generate a user name from the full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split("");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUserName = "$firstName $lastName";
    String usernameWithPrefix = "cwt_$camelCaseUserName";
    return usernameWithPrefix;
  }

  /// -Static function to create an empty user model
  static UserModel empty() =>
      UserModel(
        id: '',
        firstName: '',
        lastName: '',
        userName: '',
        email: '',
        phoneNumber: '',
        profilePicture: '',
      );

  /// -Convert model to json structure for starting data in firebase
  Map<String, dynamic> toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "UserName": userName,
      "Email": email,
      "PhoneNumber": phoneNumber,
      "ProfilePicture": profilePicture,
    };
  }


  ///- Factory method to create a user model from a firebase documents snapshot
  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data();

    if (data != null) {
      return UserModel(
        id: document.id,
        firstName: data["FirstName"] ?? '',
        lastName: data["LastName"] ?? '',
        userName: data["UserName"] ?? '',
        email: data["Email"] ?? '',
        phoneNumber: data["PhoneNumber"] ?? '',
        profilePicture: data["ProfilePicture"] ?? '',
      );
    } else {
      // Return a default UserModel or handle the case when data is null
      return UserModel(
        id: document.id,
        firstName: 'FirstName',
        lastName: 'LastName',
        userName: 'UserName',
        email: 'Email',
        phoneNumber: 'PhoneNumber',
        profilePicture: 'ProfilePicture',
      );
    }
  }

}
