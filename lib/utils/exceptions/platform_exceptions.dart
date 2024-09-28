
class TPlatformExceptions implements Exception{

  final String code;

  TPlatformExceptions(this.code);

  String get message {
    switch(code){
      case 'INVALID-LOGIN-CREDENTIALS':
        return 'Invalid login credentials';
      case 'too-many-request':
        return 'Too many request. Please try again later.';
      case 'invalid-arguments':
        return 'Invalid argument provided to the authentication method.';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid.';
      case 'sign_in_failed':
        return 'SignIn failed. Please try again.';
      case 'network-request-failed':
        return 'Network request failed. Please check your internet connection';
      case 'internal-error':
        return 'An internal authentication error occurred. Please try again letter.';
      case 'invalid-verification-code':
        return 'Invalid Verification code. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification Id. Please request a new verification code.';
      case 'operation-not-allowed':
        return 'This operation not allowed. Contact support for assistance.';
      case 'session-cookie-expert':
        return 'The firebase session cookie has expired. Please signIn again.';
      case 'uid-already-exists':
        return 'The provided user ID is already in use by another user.';




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
      case 'invalid-password':
        return 'Incorrect password. Please check your password and Try again';

      case 'quota-exceeded':
        return 'Quota Exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address already exists. Please use a different email';
      case 'provider-already-linked':
        return 'This account is already linked with another provider.';
      case 'requires-recent-login':
        return 'This operations is sensitive and requires recent authentication. Please again login.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account';
      case 'user-mismatch':
        return 'The supplied credential do not correspond to the previously signed in user';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';

      case 'expired-action-code':
        return 'The action code has expired. Please request a new action code';
      case 'invalid-action-code':
        return 'The code is invalid. Please check the action code and try again!';
      case 'missing-action-code':
        return 'The action code is missing. Please provide a valid action code.';
      case 'user-token-expired':
        return 'The users token has expired, and authentication is required. Please sign-in again.';
      case 'user-not-found':
        return 'No user found for the given email or UID.';
      case 'invalid-credential':
        return 'The supplied credential is malformed or has expired.';
      case 'wrong-password':
        return 'This password is invalid. Please check your password and  try again.';
      case 'user-token-revoked':
        return 'The user\'s token has been revoked. Please sign-in again!';
      case 'invalid-message-payload':
        return 'The email template verification message payload is invalid.';
      case 'invalid-sender':
        return 'The email template sender is invalid. Please verify the sender\'s email.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please provide a valid recipient email.';
      case 'missing-iframe-start':
        return 'The email template is missing the iframe start tag.';
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attributes.';
      case 'captcha-check-failed':
        return 'The reCAPTCHA response is invalid. Please try again.';
      case 'app-not-authorized':
        return 'The app is not authorized to use Firebase Authentication with the API key.';
      case 'keychain-error':
        return 'A keychain error occurred. Please check the keychain and try again.';

      case 'invalid-app-credential':
        return 'The app credential is invalid. Please provide a valid app credential';
      case 'auth-domain-config-required':
        return 'The authDomain configuration is required for the action code verification link';
      case 'missing-app-credential':
        return 'The app credential is missing. Please provide valid app credentials';

      case 'web-storage-unsupported':
        return 'Web storage is not supported or is disabled.';
      case 'app-deleted':
        return ':This instance is firebase app has been deleted.';
      case 'user-token-mismatch':
        return 'This provider user\'s token has a mismatch with the authentication user\'s user id';

      default:
        return 'An unexpected Firebase error occurred. Please try again.';
    }
  }

}