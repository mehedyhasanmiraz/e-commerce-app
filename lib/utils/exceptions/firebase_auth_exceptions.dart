

class TFirebaseAuthExceptions implements Exception{
 /// -The error Code with the exception
  final String code;

  ///- constructor that takes on error code
  TFirebaseAuthExceptions(this.code);

  /// -Get the corresponding error message based on the error code
  String get message{
    switch (code){
      case 'email-already-in-use':
        return 'The Email address is already registered. Please use different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email';
      case 'weak-password':
        return 'This password is too weak. Please choose a stronger password';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for assistance';
      case 'user-not-found':
        return 'Invalid login details. User not found';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and Try again';
      case 'invalid-verification-code':
        return 'Invalid Verification code. Please enter a valid code';
      case 'invalid-verification-id':
        return 'Invalid verification Id. Please request a new verification code';
      case 'quota-exceeded':
        return 'Quota Exceeded. Please try again later';
      case 'email-already-exists':
        return '';
    }
  }
}