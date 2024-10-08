
class TValidator{

  /// -Empty Text validation
  static String? emptyTextValidate(String? fieldName,String? value){
    if(value == null|| value.isEmpty){
      return "$fieldName is required";
    }

    return null;
  }


  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(
        r'^[\w\-]+@[a-zA-Z\d\-]+\.[a-zA-Z]{2,}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }

    return null;
  }

  static String? validPassword (String? value){
    if(value == null || value.isEmpty){
      return "Password is Required";
    }

    // check for minimum password length
    if(value.length <6){
      return "Password must be at least 6 character long";
    }

    // check for uppercase letter
    if(!value.contains(RegExp(r'[A-Z]'))){
      return "Password must be contain at least one uppercase letter";
    }

    // check for number
    if(!value.contains(RegExp(r'[0-9]'))){
      return "Password must be contain at least one number";
    }

    // check for special character
    if(!value.contains(RegExp(r'[!@#$%^&*()_+,.?:;<>{}"]'))){
      return "Password must be contain at least one special character";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return " Phone number required.";
    }

    // regular expression for phone number validation(assuming a 10 digit us phone number)
    final phoneRegExp = RegExp(r'^\d{11}$');

    if(!phoneRegExp.hasMatch(value)){
      return "Invalid phone number format (11 digit required)";
    }
    return null;
  }

  
}