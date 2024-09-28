class TFirebaseExceptions implements Exception {
  /// -The error code associated with the exception
  final String code;

  /// -Constructor that takes on error code
  TFirebaseExceptions(this.code);

  /// -Get the  corresponding error message based on the error code
  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect, Please check your custom token.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audienc.e';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'user-not-found':
        return 'NO user found for the given email or UID.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and Try again.';
      case 'weak-password':
        return 'This password is too weak. Please choose a stronger password.';
      case 'provider-already-linked':
        return 'This account is already linked with another provider.';
      case 'operation-not-allowed':
        return 'This operation not allowed. Contact support for assistance.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'invalid-verification-code':
        return 'Invalid Verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification Id. Please request a new verification code.';
      case 'captcha-check-failed':
        return 'The reCAPTCHA response is invalid. Please try again.';
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication with the API key.';
      case 'keychain-error':
        return 'A keychain error occurred. Please check the keychain and try again.';
      case 'internal-error':
        return 'An internal authentication error occurred. Please try again letter.';
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please provide a valid app credential';
      case 'user-mismatch':
        return 'The supplied credential do not correspond to the previously signed in user';
      case 'requires-recent-login':
        return 'This operations is sensitive and requires recent authentication. Please again login';
      case 'quota-exceeded':
        return 'Quota Exceeded. Please try again later';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials';
      case 'missing-iframe-start':
        return 'The email template is missing the iframe start tag.';
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attributes.';
      case 'auth-domain-config-required':
        return 'The authDomain configuration is required for the action code verification link.';
      case 'missing-app-credential':
        return 'The app credential is missing. Please provide valid app credentials';
      case 'session-cookie-expert':
        return 'The firebase session cookie has expired. Please signIn again.';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';
      case 'web-storage-unsupported':
        return 'Web storage is not supported or is disabled.';
      case 'app-deleted':
        return ':This instance is firebase app has been deleted.';
      case 'user-token-mismatch':
        return 'This provider user\'s token has a mismatch with the authentication user\'s user id.';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please provide a valid recipient email.';
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';
      case 'user-token-expired':
        return 'The users token has expired, and authentication is required. Please sign-in again.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new action code';
      case 'invalid-action-code':
        return 'The code is invalid. Please check the action code and try again!';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account';
      case 'INVALID-LOGIN-CREDENTIALS':
        return 'Invalid login credentials';
      default:
        return 'An unexpected Firebase error occurred. Please try again.';


    }
  }
}
