import 'package:flutter_ecommerce/utils/exceptions/format_exceptions.dart';
import 'package:flutter_ecommerce/utils/exceptions/platform_exceptions.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../features/personalization/models/user_model.dart';
import '../../../utils/exceptions/firebase_exceptions.dart';

/// -Repository class for user-related operators
class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  /// -Function to save user data to fire store
  Future<void> saveUserRecord (UserModel user)async {
    try {
       await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw TFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw TFormatExceptions();
    } on TPlatformExceptions catch (e){
      throw TPlatformExceptions(e.code).message;
    } catch (e){
      throw "Something went wrong, please try again!";
    }
  }


  /// -Function to fetch user detail based on user ID


  /// Function to update user data in firestore


  /// Update any field in specific user collections
}