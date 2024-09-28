class TFormatExceptions implements Exception {
  /// -The associated error message
  final String message;

  /// -Default constructor with a generated error message
  TFormatExceptions(
      [this.message =
          "An unexpected format error occurred. Please check your input"]);

  ///- Create a format exception from a specific error message
  factory TFormatExceptions.fromMessage(String message) {
    return TFormatExceptions(message);
  }

  /// -Get the corresponding error message
  String get formattedMessage => message;

  ///- Create a format exception from a specific error code
  factory TFormatExceptions.fromCode(String code){

      switch(code){
        case 'invalid-email-code':
          return  TFormatExceptions('The email address format is invalid. Please enter a valid email.');
        case 'invalid-phone-number-format':
          return TFormatExceptions('The provided phone number format is invalid. Please enter a valid number');
        case 'invalid-date-format':
          return TFormatExceptions('The date format is invalid. Please enter a valid date');
        case 'invalid-url-format':
          return TFormatExceptions('The Url format is invalid. Please enter a valid Url');
        case 'invalid-credit-card-format':
          return TFormatExceptions('The credit card format is invalid. Please enter a valid credit card number');
        case 'invalid-numeric-format':
          return TFormatExceptions('The input should be valid numeric format');

          /// add more cause are needed
        default:
          return TFormatExceptions(code);
      }

  }
}
