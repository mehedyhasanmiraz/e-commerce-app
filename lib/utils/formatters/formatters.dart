import 'package:intl/intl.dart';

class TFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat("dd-mm-yyyy").format(date);
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber){
    // assuming 10 digit US phone number format (124) 456-7890
    if(phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    }else if(phoneNumber.length ==12){
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // add more custom phone number formatting logic for different format if needed.
    return phoneNumber;
  }


  // not fully tested
  static String internationalFormatPhoneNumber (String phoneNumber) {
    // remove any non-digit phone character from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), "");

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0,2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while(i < digitsOnly.length){
      int groupLength = 2;
      if(i == 0 && countryCode == '+1'){
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if(end < digitsOnly.length){
        formattedNumber.write(" ");
      }
      i = end;
    }
    return formattedNumber.toString().trim();
  }

}